using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSResource : VSLogicalObject {
    hidden [string] $_logicalId
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [object] $Condition
    [object] $CreationPolicy
    [string[]] $DependsOn
    [TransformDeletionPolicy()] [object] $DeletionPolicy
    [object] $Metadata
    [VSHashtable] $Properties = [VSHashtable]::new()
    [string] $Type
    [object] $UpdatePolicy
    [TransformDeletionPolicy()] [object] $UpdateReplacePolicy

    [string] ToString() {
        return $this.LogicalId
    }

    [object] FormatDeletionPolicy([object] $policy) {
        if ($policy -is [string]) {
            return (Get-Culture).TextInfo.ToTitleCase($policy.ToString().ToLower())
        }
        else {
            return $policy
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {
            $this.FormatDeletionPolicy($this._deletionPolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [IntrinsicFunction], [DeletionPolicy]))] [object]
                $deletionPolicy
            )
            $this._deletionPolicy = $deletionPolicy
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {
            $this.FormatDeletionPolicy($this._updateReplacePolicy)
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
