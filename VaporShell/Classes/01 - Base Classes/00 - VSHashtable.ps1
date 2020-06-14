using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Collections.Specialized
using namespace System.Management.Automation

class VSHashtable : OrderedDictionary {
    # Anything inheriting from this class will only show the hashtable contents.
    # Object properties will be stripped when cast to JSON/YAML.
    # Useful for adding corresponding public properties for intellisense.
    hidden [string[]] $_commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    hidden [void] _addAccessors() {}

    [object] Help() {
        return $this.Help($null)
    }

    [object] Help([string] $scope) {
        if ([string]::IsNullOrEmpty($this._vsFunctionName)) {
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
        Write-Debug "Running Get-Help @$($params | ConvertTo-Json -Compress)"
        return (Get-Help @params)
    }

    [string] Docs() {
        if ([string]::IsNullOrEmpty($this._awsDocumentation)) {
            return "AWS Documentation link not found for this class!"
        }
        Start-Process $this._awsDocumentation
        return "Opening documentation link: $($this._awsDocumentation)"
    }

    [OrderedDictionary] ToOrderedDictionary() {
        return $this.ToOrderedDictionary($false)
    }

    [OrderedDictionary] ToOrderedDictionary([bool] $addAllProperties) {
        $clean = [ordered]@{}
        $this.GetEnumerator() | ForEach-Object {
            $key = if ($_.Name) {
                $_.Name
            }
            else {
                $_.Key
            }
            $value = $_.Value
            if (
                $addAllProperties -or (
                    $key -notmatch '^(_|LogicalId$)' -and (
                        $key -match '::' -or
                        $null -ne $value -or
                        (
                            $key -in @('Conditions','Mappings','Outputs','Parameters') -and
                            $value.Count -ne 0 -and
                            $this -is [VSTemplate]
                        )
                    ) -and (
                        ($value -is [string] -and -not [string]::IsNullOrEmpty($value)) -or
                        $value -isnot [string]
                    )
                )
            ) {
                $clean[$key] = if ($key -match '$(UpdateReplacePolicy|DeletionPolicy)$' -and $value.ToString() -match '^(Delete|Retain|Snapshot)$') {
                    (Get-Culture).TextInfo.ToTitleCase($value.ToString().ToLower())
                }
                elseif ($value -is [IDictionary] -and $value -isnot [VSHashtable]) {
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
                Write-Debug "Key matched: $key"
                Write-Debug "Value matched: $($clean[$key])"
            }
            else {
                Write-Debug "Key excluded: $key"
            }
        }
        return $clean
    }

    [string] ToJson() {
        return $this.ToJson($false)
    }

    [string] ToJson([bool] $compress) {
        $clean = if ($this['LogicalId']) {
            @{$this['LogicalId'] = $this.ToOrderedDictionary()}
        }
        else {
            $this.ToOrderedDictionary()
        }
        return $clean | ConvertTo-Json -Depth 50 -Compress:$compress
    }

    [string] ToYaml() {
        $flipped = if (Get-Command cfn-flip* -ErrorAction SilentlyContinue) {
            ($this.ToJson() | cfn-flip) -join [System.Environment]::NewLine
        }
        else {
            $clean = if ($this['LogicalId']) {
                @{$this['LogicalId'] = $this.ToOrderedDictionary()}
            }
            else {
                $this.ToOrderedDictionary()
            }
            ($clean | ConvertTo-Yaml) -join [System.Environment]::NewLine
        }
        return $flipped
    }

    VSHashtable() {
        $this._addAccessors()
    }

    VSHashtable([IDictionary] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input IDictionary"
        $props.GetEnumerator() | ForEach-Object {
            Write-Debug "Checking for property '$($_.Key)' on this object"
            if ($this.GetType().FullName -eq 'VSHashtable' -or ($this.PSObject.Properties.Name -contains $_.Key -and $_.Key -notin $this._commonParams)) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this[$_.Key] = $_.Value
            }
        }
    }

    VSHashtable([psobject] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input PSObject"
        $props.PSObject.Properties | ForEach-Object {
            Write-Debug "Checking for property '$($_.Name)' on this object"
            if ($this.GetType().FullName -eq 'VSHashtable' -or ($this.PSObject.Properties.Name -contains $_.Name -and $_.Name -notin $this._commonParams)) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this[$_.Name] = $_.Value
            }
        }
    }
}
