using namespace System
using namespace System.Collections
using namespace System.Collections.Specialized
class VSHashtable : hashtable {
    # Anything inheriting from this class will only show the hashtable contents.
    # Object properties will be stripped when cast to JSON/YAML.
    # Useful for adding corresponding public properties for intellisense.
    hidden [void] _addAccessors() {}

    static [string] Help() {
        $help = "This is the base VSHashtable help. The help content for this class still needs to be generated."
        return $help
    }

    [OrderedDictionary] ToOrderedDictionary() {
        return $this.ToOrderedDictionary($false)
    }

    [OrderedDictionary] ToOrderedDictionary([bool] $addAllProperties) {
        $clean = [ordered]@{}
        $this.GetEnumerator() | ForEach-Object {
            $key = $_.Key
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
            }
        }
        return $clean
    }

    [string] ToJson() {
        $clean = if ($this['LogicalId']) {
            @{$this['LogicalId'] = $this.ToOrderedDictionary()}
        }
        else {
            $this.ToOrderedDictionary()
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string] ToYaml() {
        return $this.ToYaml($false)
    }

    [string] ToYaml([bool] $usePowerShellYaml) {
        if (-not $usePowerShellYaml -and $null -ne (Get-Command cfn-flip* -ErrorAction SilentlyContinue)) {
            $flipped = ($this.ToJson() | cfn-flip) -join [System.Environment]::NewLine
        }
        else {
            $flipped = ($this.ToOrderedDictionary() | ConvertTo-Yaml) -join [System.Environment]::NewLine
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
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this[$_.Key] = $_.Value
            }
        }
    }

    VSHashtable([psobject] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input PSObject"
        $props.PSObject.Properties.Name | ForEach-Object {
            Write-Debug "Checking for property '$($_)' on this object"
            if ($this.PSObject.Properties.Name -contains $_) {
                Write-Debug "Property found, adding value: $($props."$_")"
                $this[$_] = $props."$_"
            }
        }
    }
}
