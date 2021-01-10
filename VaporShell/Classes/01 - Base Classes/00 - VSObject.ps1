using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Collections.Specialized
using namespace System.Management.Automation

class VSObject : object {
    # Anything inheriting from this class will only show the hashtable contents.
    # Object properties will be stripped when cast to JSON/YAML.
    # Useful for adding corresponding public properties for intellisense.
    static hidden [string] $_vsFunctionName = ''
    static hidden [string] $_awsDocumentation = ''
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
        return (Get-Help @params)
    }

    [string] Docs() {
        if ([string]::IsNullOrEmpty($this._awsDocumentation)) {
            return "AWS Documentation link not found for this class!"
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
                        $value -is [enum] -or
                        $key -match '::' -or
                        $null -ne $value
                    ) -and (
                        $value -isnot [string] -or
                        -not [string]::IsNullOrEmpty($value)
                    )
                )
            ) {
                $clean[$key] = if ($key -match '$(UpdateReplacePolicy|DeletionPolicy)$' -and $value.ToString() -match '^(Delete|Retain|Snapshot)$') {
                    (Get-Culture).TextInfo.ToTitleCase($value.ToString().ToLower())
                }
                elseif ($value -is [enum]) {
                    $value.ToString()
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
        $clean = if ($this.PSObject.Properties.Name -contains 'LogicalId') {
            @{$this.LogicalId = $this.ToOrderedDictionary()}
        }
        else {
            $this.ToOrderedDictionary()
        }
        return $clean | ConvertTo-Json -Depth 50 -Compress:$compress
    }

    [string] ToYaml() {
        return $this.ToYaml($false)
    }

    [string] ToYaml([bool] $usePowerShellYaml) {
        $flipped = if (-not $usePowerShellYaml -and $null -ne (Get-Command cfn-flip* -ErrorAction SilentlyContinue)) {
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

    VSObject([IDictionary] $props) {
        $this._addAccessors()
        Write-Debug "[$($this.GetType())] Contructing from input IDictionary"
        $props.GetEnumerator() | ForEach-Object {
            Write-Debug "[$($this.GetType())] [$($_.Key)]  Checking for property"
            if ($_.Key -eq 'Fn::Transform' -or ($this.PSObject.Properties.Name -contains $_.Key -and $_.Key -notin $this._commonParams)) {
                Write-Debug "[$($this.GetType())] [$($_.Key)] Property found, adding value: $($_.Value)"
                $val = if ($_.Value -is [enum]) {
                    $_.Value.ToString()
                }
                else {
                    $_.Value
                }
                $this."$($_.Key)" = $val
            }
        }
    }

    VSObject([psobject] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType()) from input PSObject"
        $props.PSObject.Properties | ForEach-Object {
            Write-Debug "[$($this.GetType())] [$($_.Name)] Checking for property"
            if ($_.Name -eq 'Fn::Transform' -or ($this.PSObject.Properties.Name -contains $_.Name -and $_.Name -notin $this._commonParams)) {
                Write-Debug "[$($this.GetType())] [$($_.Name)] Property found, adding value: $($_.Value)"
                $val = if ($_.Value -is [enum]) {
                    $_.Value.ToString()
                }
                else {
                    $_.Value
                }
                $this."$($_.Name)" = $val
            }
        }
    }
}
