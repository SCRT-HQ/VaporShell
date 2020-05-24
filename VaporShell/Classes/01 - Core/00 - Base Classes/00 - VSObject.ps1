class VSObject : object {
    hidden [void] _addAccessors() {}

    static [string] Help() {
        $help = "This is the base VSObject help. The help content for this class still needs to be generated."
        return $help
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
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                Write-Debug "Property found, adding value: $($_.Value)"
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    VSObject([psobject] $props) {
        $this._addAccessors()
        Write-Debug "Contructing $($this.GetType().Name) from input PSObject"
        $props.PSObject.Properties.Name | ForEach-Object {
            Write-Debug "Checking for property '$($_)' on this object"
            if ($this.PSObject.Properties.Name -contains $_) {
                Write-Debug "Property found, adding value: $($props."$_")"
                $this."$($_)" = $props."$_"
            }
        }
    }
}
