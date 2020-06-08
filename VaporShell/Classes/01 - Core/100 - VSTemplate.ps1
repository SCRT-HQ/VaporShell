class VSTemplate : VSObject {
    hidden [string]$_description = $null
    hidden [string] $_awsTemplateFormatVersion = $null
    hidden [hashtable] $_mappings = $null
    hidden [VSMapping[]] $_mappingsOriginal = @()
    hidden [hashtable] $_parameters = $null
    hidden [VSParameter[]] $_parametersOriginal = @()
    hidden [hashtable] $_resources = $null
    hidden [VSResource[]] $_resourcesOriginal = @()
    hidden [hashtable] $_ouputs = $null
    hidden [VSOutput[]] $_ouputsOriginal = @()
    hidden [hashtable] $_transform = $null
    [string] $AWSTemplateFormatVersion = $null
    [Include] $Transform = $null
    [string] $Description = $null
    [VSParameter[]] $Parameters = $null
    [VSMapping[]] $Mappings = $null
    [VSResource[]] $Resources = $null
    [VSOutput[]] $Outputs = $null

    static [string] Help() {
        $help = "This is the Template help."
        return $help
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddTransform([Include] $include) {
        if ($null -ne $this._transform) {
            throw "The Template already contains a Transform!"
        }
        else {
            $this._transform = $include.ToOrderedDictionary()
        }
    }

    [void] AddSAMTransform() {
        $this._transform = 'AWS::Serverless-2016-10-31'
    }

    [void] AddMapping([VSMapping] $mapping) {
        if ($this._mappings.ContainsKey($mapping.LogicalId)) {
            throw "The Template already contains a Mapping with a LogicalId of '$($mapping.LogicalId)'. LogicalIds must be unique within the Template."
        }
        else {
            $this._mappings[$mapping.LogicalId] = $mapping.Map
            $this._mappingsOriginal += $mapping
        }
    }

    [void] AddMapping([VSMapping[]] $mappings) {
        $mappings | ForEach-Object {
            $this.AddMapping($_)
        }
    }

    [void] AddParameter([VSParameter] $parameter) {
        if ($this._parameters.ContainsKey($parameter.LogicalId)) {
            throw "The Template already contains a Parameter with a LogicalId of '$($parameter.LogicalId)'. LogicalIds must be unique within the Template."
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

    [void] AddOutput([VSOutput] $output) {
        if ($this._ouputs.ContainsKey($output.LogicalId)) {
            throw "The Template already contains an Output with a LogicalId of '$($output.LogicalId)'. LogicalIds must be unique within the Template."
        }
        else {
            $cleaned = [ordered]@{}
            $safeList = [VSOutput]::new().PSObject.Properties.Name
            $output.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._ouputs[$output.LogicalId] = $cleaned
            $this._ouputsOriginal += $output
        }
    }

    [void] AddOutput([VSOutput[]] $outputs) {
        $outputs | ForEach-Object {
            $this.AddOutput($_)
        }
    }

    [void] AddResource([VSResource] $resource) {
        if ($this._resources.ContainsKey($resource.LogicalId)) {
            throw "The Template already contains a Resource with a LogicalId of '$($resource.LogicalId)'. LogicalIds must be unique within the Template."
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

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Transform' -Value {
            $this._transform
        } -SecondValue {
            param([object] $value)
            if ($value.ToString() -match 'Serverless') {
                $this.AddSAMTransform()
            }
            else {
                $this.AddTransform($value)
            }
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'AWSTemplateFormatVersion' -Value {
            $this._awsTemplateFormatVersion
        } -SecondValue {
            param([string] $value)
            $this._awsTemplateFormatVersion = $value
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Description' -Value {
            $this._description
        } -SecondValue {
            param([string] $value)
            $this._description = $value
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Mappings' -Value {
            if ($MyInvocation.Line -match '\.Mappings') {
                $this._mappingsOriginal
            }
            else {
                $this._mappings
            }
        } -SecondValue {
            param([VSMapping[]] $value)
            if ($null -eq $this._mappings) {
                $this._mappings = [ordered]@{}
            }
            $this.AddMapping($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Parameters' -Value {
            if ($MyInvocation.Line -match '\.Parameters') {
                $this._parametersOriginal
            }
            else {
                $this._parameters
            }
        } -SecondValue {
            param([VSParameter[]] $value)
            if ($null -eq $this._parameters) {
                $this._parameters = [ordered]@{}
            }
            $this.AddParameter($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Resources' -Value {
            if ($MyInvocation.Line -match '\.Resources') {
                $this._resourcesOriginal
            }
            else {
                $this._resources
            }
        } -SecondValue {
            param([VSResource[]] $value)
            if ($null -eq $this._resources) {
                $this._resources = [ordered]@{}
            }
            $this.AddResource($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Transform' -Value {
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
