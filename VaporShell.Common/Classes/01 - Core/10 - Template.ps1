class Template : VSObject {
    hidden [hashtable] $_resources = @{}
    # The description of the template
    [string] $Description
    # The resources on the template
    [Resource[]] $Resources

    [string] ToJson() {
        $props = $this.PSObject.Properties.Name
        $cleanProps = $props.Where({$_ -notmatch '^(_|LogicalId)' -and ($null -ne $this."$_" -or $_ -match '::')})
        $clean = $this | Select-Object $cleanProps
        if ($props -contains 'LogicalId') {
            $clean = @{$this.LogicalId = $clean}
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddResource([Resource] $resource) {
        $cleanProps = $resource.PSObject.Properties.Name.Where({$_ -notmatch '^(_|LogicalId)' -and $null -ne $resource."$_"})
        $this._resources[$resource.LogicalId] = $resource | Select-Object $cleanProps
    }

    [void] AddResource([Resource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {$this._resources} -SecondValue {
            param([Resource[]] $resources)
            $this.AddResource($resources)
        }
    }

    Template () {
        $this._addAccessors()
    }

    Template([hashtable] $props) {
        $this._addAccessors()
        $props.GetEnumerator() | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    Template([psobject] $props) {
        $this._addAccessors()
        $props.PSObject.Properties.Name | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_) {
                $this."$($_)" = $props."$_"
            }
        }
    }
}
