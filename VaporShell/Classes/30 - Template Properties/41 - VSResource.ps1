using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSResource : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporResource'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html'

    hidden [string[]] $_attributes = @()
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [string] $Condition
    [CreationPolicy] $CreationPolicy
    [string[]] $DependsOn
    [TransformDeletionPolicy()] [DeletionPolicy] $DeletionPolicy
    [VSJson] $Metadata
    [VSHashtable] $Properties = [VSHashtable]::new()
    [string] $Type
    [UpdatePolicy] $UpdatePolicy
    [TransformDeletionPolicy()] [UpdateReplacePolicy] $UpdateReplacePolicy

    static [object] FormatDeletionPolicy([object] $policy) {
        if ($policy -is [string]) {
                return (Get-Culture).TextInfo.ToTitleCase($policy.ToString().ToLower())
        }
        else {
            return $policy
        }
    }

    [FnRef] Ref() {
        return [FnRef]::new($this.LogicalId)
    }

    [FnGetAtt] GetAtt() {
        if ($this._attributes.Count -ne 1) {
            $message = if ($this._attributes.Count -eq 0) {
                "There are 0 attributes available for this resource! Please use <FnRef> instead."
            }
            else {
                "There are $($this._attributes.Count) attributes available for this resource! Please specify the attribute you would like to use for <FnGetAtt> instead. Valid attributes for a $($this.GetType().FullName) resource: $($this._attributes -join ', ')"
            }
            $errorRecord = [VSError]::new(
                [ArgumentException]::new($message),
                'InvalidAttribute',
                [ErrorCategory]::InvalidArgument,
                $this._attributes
            )
            throw [VSError]::InsertError($errorRecord)
        }
        return [FnGetAtt]::new($this.LogicalId, ($this._attributes | Select-Object -First 1))
    }

    [FnGetAtt] GetAtt([string] $attributeName) {
        if ($attributeName -notin $this._attributes) {
            $message = if ($this._attributes.Count -eq 0) {
                "There are 0 attributes available for this resource! Please use <FnRef> instead."
            }
            else {
                "$attributeName is not a valid attribute for this resource to return via <FnGetAtt>.  Valid attributes for a $($this.GetType().FullName) resource: $($this._attributes -join ', ')"
            }
            $errorRecord = [VSError]::new(
                [ArgumentException]::new($message),
                'InvalidAttribute',
                [ErrorCategory]::InvalidArgument,
                $attributeName
            )
            throw [VSError]::InsertError($errorRecord)
        }
        return [FnGetAtt]::new($this.LogicalId, $attributeName)
    }

    hidden [void] _addBaseAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {
            $this::FormatDeletionPolicy($this._deletionPolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [DeletionPolicy]))] [object]
                $deletionPolicy
            )
            $this._deletionPolicy = $deletionPolicy
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {
            $this::FormatDeletionPolicy($this._updateReplacePolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [UpdateReplacePolicy]))] [object]
                $updateReplacePolicy
            )
            $this._updateReplacePolicy = $updateReplacePolicy
        }
    }

    VSResource() : base() {}
    VSResource([IDictionary] $props) : base($props) {}
    VSResource([psobject] $props) : base($props) {}
}
