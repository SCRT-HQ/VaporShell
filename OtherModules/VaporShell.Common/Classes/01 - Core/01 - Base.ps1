class VSObject {
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
            if ($addAllProperties -or ($key -notmatch '^(_|LogicalId$)' -and ($null -ne $value -or $key -match '::'))) {
                $clean[$key] = if ($value -is [System.Collections.IDictionary] -and $value -isnot [VSHashtable]) {
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
        $clean = $this.ToOrderedDictionary()
        if ($this.PSObject.Properties.Name -contains 'LogicalId') {
            $clean = @{$this.LogicalId = $clean}
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string[]] ToYaml() {
        $json = $this.ToJson()
        if ($null -ne (Get-Command cfn-flip*)) {
            return $json | cfn-flip
        }
        else {
            Write-Warning "cfn-flip not found in PATH! Returning JSON"
            return $json
        }
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

class VSHashtable : hashtable {
    # Anything inheriting from this class will only show the hashtable contents.
    # Object properties will be stripped when cast to JSON/YAML.
    # Useful for adding corresponding public properties for intellisense.
    hidden [void] _addAccessors() {}

    static [string] Help() {
        $help = "This is the base VSHashtable help. The help content for this class still needs to be generated."
        return $help
    }

    [System.Collections.Specialized.OrderedDictionary] ToOrderedDictionary() {
        return $this.ToOrderedDictionary($false)
    }

    [System.Collections.Specialized.OrderedDictionary] ToOrderedDictionary([bool] $addAllProperties) {
        $clean = [ordered]@{}
        $this.GetEnumerator() | ForEach-Object {
            $key = $_.Key
            $value = $_.Value
            if ($addAllProperties -or ($key -notmatch '^(_|LogicalId$)' -and ($null -ne $value -or $key -match '::'))) {
                $clean[$key] = if ($value -is [System.Collections.IDictionary] -and $value -isnot [VSHashtable]) {
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
        $clean = $this.ToOrderedDictionary()
        if ($this.PSObject.Properties.Name -contains 'LogicalId') {
            $clean = @{$this.LogicalId = $clean}
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string[]] ToYaml() {
        $json = $this.ToJson()
        if ($null -ne (Get-Command cfn-flip*)) {
            return $json | cfn-flip
        }
        else {
            Write-Warning "cfn-flip not found in PATH! Returning JSON"
            return $json
        }
    }

    VSHashtable() {
        $this._addAccessors()
    }

    VSHashtable([System.Collections.IDictionary] $props) {
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
