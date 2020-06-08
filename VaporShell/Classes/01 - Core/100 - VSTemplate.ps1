using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSTemplate : VSObject {
    hidden [string]$_description = $null
    hidden [string] $_awsTemplateFormatVersion = $null
    hidden [hashtable] $_mappings = $null
    hidden [object[]] $_mappingsOriginal = @()
    hidden [hashtable] $_parameters = $null
    hidden [object[]] $_parametersOriginal = @()
    hidden [hashtable] $_resources = $null
    hidden [object[]] $_resourcesOriginal = @()
    hidden [hashtable] $_outputs = $null
    hidden [object[]] $_outputsOriginal = @()
    hidden [object[]] $_transform = @()
    hidden [hashtable] $_conditions = $null
    hidden [object[]] $_conditionsOriginal = @()

    [string] $AWSTemplateFormatVersion = $null
    [string] $Description = $null
    [VSCondition[]] $Conditions = $null
    [VSMapping[]] $Mappings = $null
    [VSOutput[]] $Outputs = $null
    [VSParameter[]] $Parameters = $null
    [VSResource[]] $Resources = $null
    [FnTransform[]] $Transform = $null

    static [string] Help() {
        $help = "This is the Template help."
        return $help
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddCondition([object] $condition) {
        if ($condition -is [VSCondition] -and $this._conditions.ContainsKey($condition.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($condition,'Condition')
        }
        elseif ($condition -is [VSCondition]) {
            $this._conditions[$condition.LogicalId] = $condition.Condition
        }
        elseif ($condition -is [FnTransform]) {
            if ($this._conditions.ContainsKey($condition.LogicalId)) {
                $this._conditions[$condition.LogicalId] += $condition.ToOrderedDictionary()
            }
            else {
                $this._conditions[$condition.LogicalId] = $condition.ToOrderedDictionary()
            }
        }
        elseif ($cast = $condition -as [FnTransform]) {
            if ($this._conditions.ContainsKey($condition.LogicalId)) {
                $this._conditions[$condition.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._conditions[$condition.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($condition,@([VSCondition],[FnTransform]))
        }
        $this._conditionsOriginal += $condition
    }

    [void] AddCondition([object[]] $conditions) {
        $conditions | ForEach-Object {
            $this.AddCondition($_)
        }
    }

    [void] AddTransform([object] $transform) {
        if ($transform -is [string]) {
            $this._transform += $transform
        }
        elseif ($transform -is [FnTransform]) {
            $this._transform += $transform.ToOrderedDictionary()
        }
        elseif ($cast = $transform -as [FnTransform]) {
            $this._transform += $cast.ToOrderedDictionary()
        }
        else {
            throw [VSError]::InvalidType($transform,@([string],[FnTransform]))
        }
    }

    [void] AddTransform([object[]] $transforms) {
        $transforms | ForEach-Object {
            $this.AddTransform($_)
        }
    }

    [void] AddSAMTransform() {
        $this.AddTransform('AWS::Serverless-2016-10-31')
    }

    [void] AddMapping([object] $mapping) {
        if ($mapping -is [VSMapping] -and $this._mappings.ContainsKey($mapping.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($mapping,'Mapping')
        }
        elseif ($mapping -is [VSMapping]) {
            $this._mappings[$mapping.LogicalId] = $mapping.Map
        }
        elseif ($mapping -is [FnTransform]) {
            if ($this._mappings.ContainsKey($mapping.LogicalId)) {
                $this._mappings[$mapping.LogicalId] += $mapping.ToOrderedDictionary()
            }
            else {
                $this._mappings[$mapping.LogicalId] = $mapping.ToOrderedDictionary()
            }
        }
        elseif ($cast = $mapping -as [FnTransform]) {
            if ($this._mappings.ContainsKey($mapping.LogicalId)) {
                $this._mappings[$mapping.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._mappings[$mapping.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($mapping,@([VSMapping],[FnTransform]))
        }
        $this._mappingsOriginal += $mapping
    }

    [void] AddMapping([object[]] $mappings) {
        $mappings | ForEach-Object {
            $this.AddMapping($_)
        }
    }

    [void] AddParameter([object] $parameter) {
        if ($this._parameters.ContainsKey($parameter.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($parameter,'Parameter')
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

    [void] AddParameter([object[]] $parameters) {
        $parameters | ForEach-Object {
            $this.AddParameter($_)
        }
    }

    [void] AddOutput([object] $output) {
        if ($output -is [VSOutput] -and $this._outputs.ContainsKey($output.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($output,'Output')
        }
        elseif ($output -is [VSOutput]) {
            $cleaned = [ordered]@{}
            $safeList = [VSOutput]::new().PSObject.Properties.Name
            $output.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._outputs[$output.LogicalId] = $cleaned
        }
        elseif ($output -is [FnTransform]) {
            if ($this._outputs.ContainsKey($output.LogicalId)) {
                $this._outputs[$output.LogicalId] += $output.ToOrderedDictionary()
            }
            else {
                $this._outputs[$output.LogicalId] = $output.ToOrderedDictionary()
            }
        }
        elseif ($cast = $output -as [FnTransform]) {
            if ($this._outputs.ContainsKey($output.LogicalId)) {
                $this._outputs[$output.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._outputs[$output.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($output,@([VSOutput],[FnTransform]))
        }
        $this._outputsOriginal += $output
    }

    [void] AddOutput([object[]] $outputs) {
        $outputs | ForEach-Object {
            $this.AddOutput($_)
        }
    }

    [void] AddResource([object] $resource) {
        if ($resource -is [VSResource] -and $resource.LogicalId -ne 'Fn::Transform' -and $this._resources.ContainsKey($resource.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($resource,'Resource')
        }
        elseif ($resource -is [VSResource]) {
            $cleaned = [ordered]@{}
            $safeList = [VSResource]::new().PSObject.Properties.Name
            $resource.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($resource.LogicalId -eq 'Fn::Transform' -or $_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._resources[$resource.LogicalId] = $cleaned
        }
        elseif ($resource -is [FnTransform]) {
            if ($this._resources.ContainsKey($resource.LogicalId)) {
                $this._resources[$resource.LogicalId] += $resource.ToOrderedDictionary()
            }
            else {
                $this._resources[$resource.LogicalId] = $resource.ToOrderedDictionary()
            }
        }
        elseif ($cast = $resource -as [FnTransform]) {
            if ($this._resources.ContainsKey($resource.LogicalId)) {
                $this._resources[$resource.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._resources[$resource.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($resource,@([VSResource],[FnTransform]))
        }
        $this._resourcesOriginal += $resource
    }

    [void] AddResource([object[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
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
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Conditions' -Value {
            if ($MyInvocation.Line -match '\.Conditions') {
                $this._conditionsOriginal
            }
            else {
                $this._conditions
            }
        } -SecondValue {
            param([object[]] $value)
            if ($null -eq $this._conditions) {
                $this._conditions = [ordered]@{}
            }
            $this.AddCondition($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Mappings' -Value {
            if ($MyInvocation.Line -match '\.Mappings') {
                $this._mappingsOriginal
            }
            else {
                $this._mappings
            }
        } -SecondValue {
            param([object[]] $value)
            if ($null -eq $this._mappings) {
                $this._mappings = [ordered]@{}
            }
            $this.AddMapping($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Outputs' -Value {
            if ($MyInvocation.Line -match '\.Outputs') {
                $this._outputsOriginal
            }
            else {
                $this._outputs
            }
        } -SecondValue {
            param([object[]] $value)
            if ($null -eq $this._outputs) {
                $this._outputs = [ordered]@{}
            }
            $this.AddOutput($value)
        }
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Parameters' -Value {
            if ($MyInvocation.Line -match '\.Parameters') {
                $this._parametersOriginal
            }
            else {
                $this._parameters
            }
        } -SecondValue {
            param([object[]] $value)
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
            param([object[]] $value)
            if ($null -eq $this._resources) {
                $this._resources = [ordered]@{}
            }
            $this.AddResource($value)
        }
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
    }

    VSTemplate() : base() {}
    VSTemplate([IDictionary] $props) : base($props) {}
    VSTemplate([psobject] $props) : base($props)  {}
}
