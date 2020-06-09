class VSObject : object {
    hidden [string] $_vsFunctionName = $null
    hidden [string] $_awsDocumentation = $null
    hidden [string[]] $_commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')

    hidden [void] _addAccessors() {}

    [object] Help() {
        if ($null -eq $this._vsFunctionName) {
            return "Help content has not been created for this class. Please open an issue on the GitHub repository to request help for this class."
        }
        return (Get-Help $this._vsFunctionName)
    }

    [object] Help([string] $scope) {
        if ($null -eq $this._vsFunctionName) {
            return "Help content has not been created for this class. Please open an issue on the GitHub repository to request help for this class."
        }
        $params = @{Name = $this._vsFunctionName}
        switch -Regex ($scope) {
            '^F(u|ull){0,1}' {
                $params["Full"] = $true
            }
            '^D(e|etail){0,1}' {
                $params["Detailed"] = $true
            }
            '^E(x|xample){0,1}' {
                $params["Examples"] = $true
            }
            '^O(n|nline){0,1}$' {
                $params["Online"] = $true
            }
        }
        return (Get-Help @params)
    }

    [string] Docs() {
        if ($null -eq $this._awsDocumentation) {
            return "Documentation link not found! Please open an issue on the GitHub repository to request help for this class."
        }
        Start-Process $this._awsDocumentation
        return "Opening documentation link: $($this._awsDocumentation)"
    }

    [System.Collections.Specialized.OrderedDictionary] ToOrderedDictionary() {
        return $this.ToOrderedDictionary($false)
    }

    [System.Collections.Specialized.OrderedDictionary] ToOrderedDictionary([bool] $addAllProperties) {
        $clean = [ordered]@{}
        $this.PSObject.Properties | ForEach-Object {
            $key = $_.Name
            $value = $_.Value
            if (
                $addAllProperties -or (
                    $key -notmatch '^(_|LogicalId$)' -and (
                        $null -ne $value -or
                        $key -match '::'
                    ) -and (
                        ($value -is [string] -and -not [string]::IsNullOrEmpty($value)) -or
                        $value -isnot [string]
                    )
                )
            ) {
                $clean[$key] = if ($key -match '$(UpdateReplacePolicy|DeletionPolicy)$' -and $value.ToString() -match '^(Delete|Retain|Snapshot)$') {
                    (Get-Culture).TextInfo.ToTitleCase($value.ToString().ToLower())
                }
                elseif ($value -is [System.Collections.IDictionary] -and $value -isnot [VSHashtable]) {
                    $value
                }
                elseif ($value | Get-Member -Name ToOrderedDictionary* -MemberType Method -ErrorAction SilentlyContinue) {
                    try {
                        $value.ToOrderedDictionary($addAllProperties)
                    }
                    catch {
                        $value
                    }
                }
                else {
                    $value
                }
            }
        }
        return $clean
    }

    [string] ToJson() {
        $clean = if ($this.PSObject.Properties.Name -contains 'LogicalId') {
            @{$this.LogicalId = $this.ToOrderedDictionary()}
        }
        else {
            $this.ToOrderedDictionary()
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string] ToYaml() {
        $flipped = if (Get-Command cfn-flip* -ErrorAction SilentlyContinue) {
            ($this.ToJson() | cfn-flip) -join [System.Environment]::NewLine
        }
        else {
            $clean = if ($this.PSObject.Properties.Name -contains 'LogicalId') {
                @{$this.LogicalId = $this.ToOrderedDictionary()}
            }
            else {
                $this.ToOrderedDictionary()
            }
            ($clean | ConvertTo-Yaml) -join [System.Environment]::NewLine
        }
        return $flipped
    }

    VSObject() {
        $this._addAccessors()
    }

    VSObject([System.Collections.IDictionary] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input IDictionary"
        $props.GetEnumerator() | ForEach-Object {
            Write-Debug "Checking for property '$($_.Key)' on this object"
            if ($_.Key -eq 'Fn::Transform' -or ($this.PSObject.Properties.Name -contains $_.Key -and $_.Key -notin $this._commonParams)) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    VSObject([psobject] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input PSObject"
        $props.PSObject.Properties | ForEach-Object {
            Write-Debug "Checking for property '$($_.Name)' on this object"
            if ($_.Name -eq 'Fn::Transform' -or ($this.PSObject.Properties.Name -contains $_.Name -and $_.Name -notin $this._commonParams)) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this."$($_.Name)" = $_.Value
            }
        }
    }
}
