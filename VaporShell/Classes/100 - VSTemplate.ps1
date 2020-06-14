using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Collections.Specialized
using namespace System.Management.Automation

class VSTemplate : VSObject {
    hidden [string] $_vsFunctionName = 'Initialize-VaporShell'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html'

    hidden [string]$_description = $null
    hidden [string] $_awsTemplateFormatVersion = $null
    hidden [OrderedDictionary] $_mappings = $null
    hidden [object[]] $_mappingsOriginal = @()
    hidden [OrderedDictionary] $_parameters = $null
    hidden [object[]] $_parametersOriginal = @()
    hidden [OrderedDictionary] $_resources = $null
    hidden [object[]] $_resourcesOriginal = @()
    hidden [OrderedDictionary] $_outputs = $null
    hidden [object[]] $_outputsOriginal = @()
    hidden [object[]] $_transform = @()
    hidden [OrderedDictionary] $_conditions = $null
    hidden [object[]] $_conditionsOriginal = @()

    [string] $AWSTemplateFormatVersion = $null
    [string] $Description = $null
    [FnTransform[]] $Transform = $null
    [VSParameter[]] $Parameters = $null
    [VSCondition[]] $Conditions = $null
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

    [void] AddCondition([object] $item) {
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item,'Condition')
        }
        elseif ($item -is [VSCondition] -and $this._conditions.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item,'Condition')
        }
        elseif ($item -is [VSCondition]) {
            $this._conditions[$item.LogicalId] = $item.Condition
        }
        elseif ($item -is [FnTransform]) {
            if ($this._conditions.Contains($item.LogicalId)) {
                $this._conditions[$item.LogicalId] += $item.ToOrderedDictionary()
            }
            else {
                $this._conditions[$item.LogicalId] = $item.ToOrderedDictionary()
            }
        }
        elseif ($cast = $item -as [FnTransform]) {
            if ($this._conditions.Contains($item.LogicalId)) {
                $this._conditions[$item.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._conditions[$item.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($item,@([VSCondition],[FnTransform]))
        }
        $this._conditionsOriginal += $item
    }

    [void] AddCondition([object[]] $items) {
        $items | ForEach-Object {
            $this.AddCondition($_)
        }
    }

    [void] AddMapping([object] $item) {
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item,'Mapping')
        }
        elseif ($item -is [VSMapping] -and $this._mappings.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item,'Mapping')
        }
        elseif ($item -is [VSMapping]) {
            $this._mappings[$item.LogicalId] = $item.Map
        }
        elseif ($item -is [FnTransform]) {
            if ($this._mappings.Contains($item.LogicalId)) {
                $this._mappings[$item.LogicalId] += $item.ToOrderedDictionary()
            }
            else {
                $this._mappings[$item.LogicalId] = $item.ToOrderedDictionary()
            }
        }
        elseif ($cast = $item -as [FnTransform]) {
            if ($this._mappings.Contains($item.LogicalId)) {
                $this._mappings[$item.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._mappings[$item.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($item,@([VSMapping],[FnTransform]))
        }
        $this._mappingsOriginal += $item
    }

    [void] AddMapping([object[]] $items) {
        $items | ForEach-Object {
            $this.AddMapping($_)
        }
    }

    [void] AddOutput([object] $item) {
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item,'Output')
        }
        elseif ($item -is [VSOutput] -and $this._outputs.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item,'Output')
        }
        elseif ($item -is [VSOutput]) {
            $cleaned = [ordered]@{}
            $safeList = [VSOutput]::new().PSObject.Properties.Name
            $item.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._outputs[$item.LogicalId] = $cleaned
        }
        elseif ($item -is [FnTransform]) {
            if ($this._outputs.Contains($item.LogicalId)) {
                $this._outputs[$item.LogicalId] += $item.ToOrderedDictionary()
            }
            else {
                $this._outputs[$item.LogicalId] = $item.ToOrderedDictionary()
            }
        }
        elseif ($cast = $item -as [FnTransform]) {
            if ($this._outputs.Contains($item.LogicalId)) {
                $this._outputs[$item.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._outputs[$item.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($item,@([VSOutput],[FnTransform]))
        }
        $this._outputsOriginal += $item
    }

    [void] AddOutput([object[]] $items) {
        $items | ForEach-Object {
            $this.AddOutput($_)
        }
    }

    [void] AddParameter([object] $item) {
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item,'Parameter')
        }
        elseif ($this._parameters.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item,'Parameter')
        }
        else {
            $cleaned = [ordered]@{}
            $safeList = [VSParameter]::new().PSObject.Properties.Name
            $item.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._parameters[$item.LogicalId] = $cleaned
            $this._parametersOriginal += $item
        }
    }

    [void] AddParameter([object[]] $items) {
        $items | ForEach-Object {
            $this.AddParameter($_)
        }
    }

    [void] AddResource([object] $item) {
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item,'Resource')
        }
        elseif ($item -is [VSResource] -and $this._resources.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item,'Resource')
        }
        elseif ($item -is [VSResource]) {
            $cleaned = [ordered]@{}
            $safeList = [VSResource]::new().PSObject.Properties.Name
            $item.ToOrderedDictionary().GetEnumerator() | ForEach-Object {
                if ($item.LogicalId -eq 'Fn::Transform' -or $_.Key -in $safeList) {
                    $cleaned[$_.Key] = $_.Value
                }
            }
            $this._resources[$item.LogicalId] = $cleaned
        }
        elseif ($item -is [FnTransform]) {
            if ($this._resources.Contains($item.LogicalId)) {
                $this._resources[$item.LogicalId] += $item.ToOrderedDictionary()
            }
            else {
                $this._resources[$item.LogicalId] = $item.ToOrderedDictionary()
            }
        }
        elseif ($cast = $item -as [FnTransform]) {
            if ($this._resources.Contains($item.LogicalId)) {
                $this._resources[$item.LogicalId] += $cast.ToOrderedDictionary()
            }
            else {
                $this._resources[$item.LogicalId] = $cast.ToOrderedDictionary()
            }
        }
        else {
            throw [VSError]::InvalidType($item,@([VSResource],[FnTransform]))
        }
        $this._resourcesOriginal += $item
    }

    [void] AddResource([object[]] $items) {
        $items | ForEach-Object {
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
    }

    VSTemplate() : base() {}
    VSTemplate([IDictionary] $props) : base($props) {}
    VSTemplate([psobject] $props) : base($props)  {}
}
