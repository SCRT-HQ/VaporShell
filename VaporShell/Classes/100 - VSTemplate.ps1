using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Collections.Specialized
using namespace System.IO
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
    hidden [OrderedDictionary] $_metadata = $null
    hidden [object[]] $_metadataOriginal = @()
    hidden [object[]] $_transform = @()
    hidden [OrderedDictionary] $_conditions = $null
    hidden [object[]] $_conditionsOriginal = @()

    [string] $AWSTemplateFormatVersion = $null
    [string] $Description = $null
    [FnTransform[]] $Transform = $null
    [VSParameter[]] $Parameters = $null
    [VSCondition[]] $Conditions = $null
    [VSMetadata[]] $Metadata = $null
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

    [string] Export([bool] $passThru, [string] $format) {
        if ($null -eq $this.Resources) {
            throw [VSError]::InvalidArgument($this,"Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum.")
        }
        $out = switch -RegEx ($format.ToLower()) {
            '^(y|yml|yaml)$' {
                $this.ToYaml()
            }
            '^(j|jsn|json)$' {
                $this.ToJson()
            }
            default {
                $this.ToJson()
            }
        }
        return $out
    }

    [void] Export ([string] $path) {
        $format = switch -RegEx ($Path) {
            '\.(yml|yaml)$' {
                'YAML'
            }
            default {
                'JSON'
            }
        }
        $this.Export($path, $format, $false)
    }

    [void] Export ([string] $path, [bool] $force) {
        $format = switch -RegEx ($Path) {
            '\.(yml|yaml)$' {
                'YAML'
            }
            default {
                'JSON'
            }
        }
        $this.Export($path, $format, $force)
    }

    [void] Export([string] $path, [string] $format, [bool] $force) {
        if ($null -eq $this.Resources) {
            throw [VSError]::InvalidArgument($this,"Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum.")
        }
        $forcePref = @{}
        if ($force) {
            $forcePref.add("Force",$True)
        }
        switch -RegEx ($format.ToLower()) {
            '^(yml|yaml)$' {
                $this.ToYaml() | Set-Content $path @forcePref
            }
            '^(template|json|cfn|cf)$' {
                $this.ToJson() | Set-Content $path @forcePref
            }
        }
    }

    [void] Remove([string] $logicalId, [string] $section) {
        $validSections = @('Parameters', 'Conditions', 'Metadata', 'Mappings', 'Resources', 'Outputs')
        if ($this.PSObject.Properties.Name -notcontains $section) {
            $message = "The section $section was not found on $($this.GetType()). Valid sections: $($validSections -join ', ')"
            throw [VSError]::InvalidArgument($logicalId, $message)
        }
        $_section = '_' + $section.Substring(0, 1).ToLower() + $section.Substring(1)
        $_sectionOriginal = $_section + 'Original'
        if (($this.$_section).Contains($logicalId)) {
            ($this.$_section).Remove($logicalId) | Out-Null
            $this.$_sectionOriginal = $this.$_sectionOriginal | Where-Object { $_.LogicalId -ne $logicalId }
        }
    }

    [void] RemoveParameter([string] $logicalId) {
        $this.Remove($logicalId, 'Parameters')
    }

    [void] RemoveCondition([string] $logicalId) {
        $this.Remove($logicalId, 'Conditions')
    }

    [void] RemoveMetadata([string] $logicalId) {
        $this.Remove($logicalId, 'Metadata')
    }

    [void] RemoveMapping([string] $logicalId) {
        $this.Remove($logicalId, 'Mappings')
    }

    [void] RemoveResource([string] $logicalId) {
        $this.Remove($logicalId, 'Resources')
    }

    [void] RemoveOutput([string] $logicalId) {
        $this.Remove($logicalId, 'Outputs')
    }

    [void] AddTransform([object] $transform) {
        if ($transform -is [string]) {
            if ($transform -match 'Serverless' -and $this._transform -notcontains 'AWS::Serverless-2016-10-31') {
                $this._transform += 'AWS::Serverless-2016-10-31'
            }
            else {
                $this._transform += $transform
            }
        }
        elseif ($transform -is [FnTransform]) {
            $this._transform += $transform.ToOrderedDictionary()
        }
        elseif ($cast = $transform -as [FnTransform]) {
            $this._transform += $cast.ToOrderedDictionary()
        }
        else {
            throw [VSError]::InvalidType($transform, @([string], [FnTransform]))
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
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._conditions) {
            $this._conditions = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Condition')
        }
        elseif ($item -is [VSCondition] -and $this._conditions.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Condition')
        }
        elseif ($item -is [VSCondition]) {
            $this._conditions[$item.LogicalId] = $item.Condition
        }
        elseif ($item -is [FnTransform]) {
            $cleaned = [ordered]@{
                Name = $item.Name
                Parameters = $item.Parameters
            }
            $this._conditions[$item.LogicalId] = $cleaned
        }
        elseif ($cast = $item -as [FnTransform]) {
            $cleaned = [ordered]@{
                Name = $cast.Name
                Parameters = $cast.Parameters
            }
            $this._conditions[$cast.LogicalId] = $cleaned
        }
        else {
            throw [VSError]::InvalidType($item, @([VSCondition], [FnTransform]))
        }
        $this._conditionsOriginal += $item
    }

    [void] AddCondition([object[]] $items) {
        $items | ForEach-Object {
            $this.AddCondition($_)
        }
    }

    [void] AddMapping([object] $item) {
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._mappings) {
            $this._mappings = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Mapping')
        }
        elseif ($item -is [VSMapping] -and $this._mappings.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Mapping')
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
            throw [VSError]::InvalidType($item, @([VSMapping], [FnTransform]))
        }
        $this._mappingsOriginal += $item
    }

    [void] AddMapping([object[]] $items) {
        $items | ForEach-Object {
            $this.AddMapping($_)
        }
    }

    [void] AddOutput([object] $item) {
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._outputs) {
            $this._outputs = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Output')
        }
        elseif ($item -is [VSOutput] -and $this._outputs.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Output')
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
            throw [VSError]::InvalidType($item, @([VSOutput], [FnTransform]))
        }
        $this._outputsOriginal += $item
    }

    [void] AddOutput([object[]] $items) {
        $items | ForEach-Object {
            $this.AddOutput($_)
        }
    }

    [void] AddParameter([object] $item) {
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._parameters) {
            $this._parameters = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Parameter')
        }
        elseif ($this._parameters.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Parameter')
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

    [void] AddMetadata([object] $item) {
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._metadata) {
            $this._metadata = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Metadata')
        }
        elseif ($item -is [VSMetadata] -and $this._metadata.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Metadata')
        }
        elseif ($item -is [VSMetadata]) {
            $this._metadata[$item.LogicalId] = $item.Metadata
        }
        elseif ($item -is [FnTransform]) {
            $cleaned = [ordered]@{
                Name = $item.Name
                Parameters = $item.Parameters
            }
            $this._metadata[$item.LogicalId] = $cleaned
        }
        elseif ($cast = $item -as [FnTransform]) {
            $cleaned = [ordered]@{
                Name = $cast.Name
                Parameters = $cast.Parameters
            }
            $this._metadata[$cast.LogicalId] = $cleaned
        }
        else {
            throw [VSError]::InvalidType($item, @([VSMetadata], [FnTransform]))
        }
        $this._metadataOriginal += $item
    }

    [void] AddMetadata([object[]] $items) {
        $items | ForEach-Object {
            $this.AddParameter($_)
        }
    }

    [void] AddResource([object] $item) {
        if ($item.GetType() -in @([string],[int],[bool],[double],[long])) {
            throw [VSError]::InvalidType($item,@([VSObject],[VSHashtable],[psobject],[IDictionary]))
        }
        elseif ($null -eq $this._resources) {
            $this._resources = [ordered]@{}
        }
        if ($null -eq $item.LogicalId) {
            throw [VSError]::MissingLogicalId($item, 'Resource')
        }
        elseif ($item -is [VSResource] -and $this._resources.Contains($item.LogicalId)) {
            throw [VSError]::DuplicateLogicalId($item, 'Resource')
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
            if ($item.Type -match 'Serverless') {
                $this.AddTransform('Serverless')
            }
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
            throw [VSError]::InvalidType($item, @([VSResource], [FnTransform]))
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
            param([object] $value)
            if ($value -is [string]) {
                $this._awsTemplateFormatVersion = $value
            }
            elseif ($value -is [datetime]) {
                $this._awsTemplateFormatVersion = $value.ToString('yyyy-MM-dd')
            }
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
            $this.AddTransform($value)
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
        $this | Add-Member -Force -MemberType 'ScriptProperty' -Name 'Metadata' -Value {
            if ($MyInvocation.Line -match '\.Metadata') {
                $this._metadataOriginal
            }
            else {
                $this._metadata
            }
        } -SecondValue {
            param([object[]] $value)
            if ($null -eq $this._metadata) {
                $this._metadata = [ordered]@{}
            }
            $this.AddMetadata($value)
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
    VSTemplate([psobject] $props) : base($props) {}
    VSTemplate([string] $pathOrBodyOrUrl) {
        Write-Debug "Building template from $pathOrBodyOrUrl"
        $templateBody = if (Test-Path $pathOrBodyOrUrl) {
            [System.IO.File]::ReadAllText((Resolve-Path $pathOrBodyOrUrl))
        } elseif ($pathOrBodyOrUrl -as [Uri]) {
            (Invoke-WebRequest -Uri $pathOrBodyOrUrl).Content
        } else {
            $pathOrBodyOrUrl
        }
        $baseObj = if ($templateBody -match "Resources:") {
            if (Get-Command cfn-flip -ErrorAction SilentlyContinue) {
                ConvertFrom-Json -InputObject (($templateBody | cfn-flip) -join [Environment]::NewLine)
            } else {
                $ht = ConvertFrom-Yaml -Yaml $templateBody -Ordered
                [PSCustomObject]$ht
            }
        } else {
            ConvertFrom-Json -InputObject $templateBody
        }
        #<#
        foreach ($section in $baseObj.PSObject.Properties) {
            Write-Debug "Importing section: $($section.Name)"
            switch -Regex ($section.Name) {
                '(Outputs|Parameters|Resources|Metadata|Mappings|Conditions)' {
                    $this."$($section.Name)" = @()
                    $sectionContents = $baseObj."$($section.Name)"
                    $list = if ($sectionContents -is [IDictionary]) {
                        ([PSCustomObject]$sectionContents).PSObject.Properties
                    }
                    else {
                        $sectionContents.PSObject.Properties
                    }
                    foreach ($item in $list) {
                        Write-Debug "[$($section.Name)] Parsing item: $($item.Name)"
                        $newItem = $item.Value
                        if ($null -eq $newItem.LogicalId) {
                            $newItem | Add-Member -Force -MemberType NoteProperty -Name LogicalId -Value $item.Name -PassThru
                        }
                        switch ($section.Name) {
                            Outputs {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddOutput(($newItem -as [FnTransform]))
                                }
                                else {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSOutput"
                                    $this.AddOutput(($newItem -as [VSOutput]))
                                }
                            }
                            Parameters {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddParameter(($newItem -as [FnTransform]))
                                }
                                else {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSParameter"
                                    $this.AddParameter(($newItem -as [VSParameter]))
                                }
                            }
                            Mappings {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddMapping(($newItem -as [FnTransform]))
                                }
                                else {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSMapping"
                                    $this.AddMapping(([VSMapping]@{LogicalId = $item.Name; Map = $item.Value}))
                                }
                            }
                            Metadata {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddMetadata(($newItem -as [FnTransform]))
                                }
                                else {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSMetadata"
                                    $this.AddMetadata(([VSMetadata]@{LogicalId = $item.Name; Metadata = $item.Value}))
                                }
                            }
                            Conditions {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddCondition(($newItem -as [FnTransform]))
                                }
                                else {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSCondition"
                                    $this.AddCondition(([VSCondition]@{LogicalId = $item.Name; Condition = $item.Value}))
                                }
                            }
                            Resources {
                                if ($item.Name -eq 'Fn::Transform') {
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Adding as FnTransform"
                                    $this.AddResource(($newItem -as [FnTransform]))
                                }
                                else {
                                    $className = $newItem.Type -replace '^AWS::' -replace '\W'
                                    if ($className -match 'Serverless') {
                                        $className = $className -replace 'Serverless','SAM'
                                    }
                                    Write-Debug "[$($section.Name)] [$($item.Name)] Checking for type: $className"
                                    $resource = if ($t = $className -as [type]) {
                                        Write-Debug "[$($section.Name)] [$($item.Name)] Adding as $className"
                                        $newItem -as $t
                                    }
                                    else {
                                        Write-Debug "[$($section.Name)] [$($item.Name)] Adding as VSResource"
                                        $newItem -as [VSResource]
                                    }
                                    $this.AddResource(($resource))
                                }
                            }
                        }
                        Write-Debug "[$($section.Name)] [$($item.Name)] Added item to VSTemplate"
                    }
                }
                AWSTemplateFormatVersion {
                    $this.AWSTemplateFormatVersion = '2010-09-09'
                }
                default {
                    $this."$($section.Name)" = $baseObj."$($section.Name)"
                }
            }
            Write-Debug "[$($section.Name)] Added section to VSTemplate"
        }
        #>
    }
}
