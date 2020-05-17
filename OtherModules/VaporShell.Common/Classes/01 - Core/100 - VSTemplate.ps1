class VSTemplate : VSObject {
    hidden [string]$_description = $null
    hidden [string] $_awsTemplateFormatVersion = $null
    hidden [hashtable] $_parameters = $null
    hidden [VSParameter[]] $_parametersOriginal = @()
    hidden [hashtable] $_resources = $null
    hidden [VSResource[]] $_resourcesOriginal = @()
    hidden [hashtable] $_transform = $null
    [string] $AWSTemplateFormatVersion = $null
    [object] $Transform = $null
    [string] $Description = $null
    [VSParameter[]] $Parameters = $null
    [object] $Mappings = $null
    [VSResource[]] $Resources = $null
    [object] $Outputs = $null
    [object] $Rules = $null

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
            $this._parameters[$parameter.LogicalId] = $cleaned
            $this._parametersOriginal += $parameter
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
            $this._resourcesOriginal += $resource
        }
    }

    [void] AddResource([VSResource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    [VSResource[]] GetResources() {
        return $this._resourcesOriginal
    }

    [VSParameter[]] GetParameters() {
        return $this._parametersOriginal
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
            $this._parameters
        } -SecondValue {
            param([VSParameter[]] $value)
            if ($null -eq $this._parameters) {
                $this._parameters = [ordered]@{}
            }
            $this.AddParameter($value)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {
            $this._resources
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
