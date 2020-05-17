class VSTemplate : VSObject {
    hidden [string]$_description = $null
    hidden [string] $_awsTemplateFormatVersion = $null
    hidden [hashtable] $_parameters = $null
    hidden [hashtable] $_resources = $null
    hidden [hashtable] $_transform = $null
    [string] $AWSTemplateFormatVersion
    [object] $Transform
    [string] $Description
    [VSParameter[]] $Parameters
    [object] $Mappings
    [VSResource[]] $Resources
    [object] $Outputs
    [object] $Rules

    static [string] Help() {
        $help = "This is the Template help."
        return $help
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddParameter([VSParameter] $parameter) {
        if ($this._parameters.ContainsKey($parameter.LogicalId)) {
            throw "The Template already contains a Parameter with a LogicalId of '$($parameter.LogicalId)'. LogicalId must be unique within the Template."
        }
        else {
            $cleaned = [ordered]@{}
            $safeList = [VSParameter]::new().PSObject.Properties.Name
            $parameter.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._resources[$parameter.LogicalId] = $cleaned
        }
    }

    [void] AddParameter([VSParameter[]] $parameters) {
        $parameters | ForEach-Object {
            $this.AddParameter($_)
        }
    }

    [void] AddResource([VSResource] $resource) {
        if ($this._resources.ContainsKey($resource.LogicalId)) {
            throw "The Template already contains a Resource with a LogicalId of '$($resource.LogicalId)'. LogicalId must be unique within the Template."
        }
        else {
            $cleaned = [ordered]@{}
            $safeList = [VSResource]::new().PSObject.Properties.Name
            $resource.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._resources[$resource.LogicalId] = $cleaned
        }
    }

    [void] AddResource([VSResource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name AWSTemplateFormatVersion -Value {
            $this._awsTemplateFormatVersion
        } -SecondValue {
            param([string] $value)
            $this._awsTemplateFormatVersion = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Description -Value {
            $this._description
        } -SecondValue {
            param([string] $value)
            $this._description = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Parameters -Value {
            [PSCustomObject]$this._parameters
        } -SecondValue {
            param([VSParameter[]] $value)
            if ($null -eq $this._parameters) {
                $this._parameters = [ordered]@{}
            }
            $this.AddParameter($value)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {
            [PSCustomObject]$this._resources
        } -SecondValue {
            param([VSResource[]] $value)
            if ($null -eq $this._resources) {
                $this._resources = [ordered]@{}
            }
            $this.AddResource($value)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Transform -Value {
            [PSCustomObject]$this._transform
        } -SecondValue {
            param([object] $value)
            if ($null -eq $this._transform) {
                $this._transform = [ordered]@{}
            }
            $this._transform = $value
        }
    }

    VSTemplate() : base() {}
    VSTemplate([System.Collections.IDictionary] $props) : base($props) {}
    VSTemplate([psobject] $props) : base($props)  {}
}
