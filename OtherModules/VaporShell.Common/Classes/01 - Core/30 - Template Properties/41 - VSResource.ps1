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

    [object] FormatDeletionPolicy([object] $policy) {
        $deletionPolicies = @('Delete','Retain','Snapshot')
        if ($found = $deletionPolicies | Where-Object {$_ -eq $policy.ToString()}) {
            return $found
        }
        return $policy
    }

    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {
            $this.FormatDeletionPolicy($this._deletionPolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [FnRef]))] [object]
                $deletionPolicy
            )
            $formatted = $this.FormatDeletionPolicy($deletionPolicy)
            $this._deletionPolicy = $this.FormatDeletionPolicy($deletionPolicy)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {
            $this.FormatDeletionPolicy($this._updateReplacePolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [FnRef]))] [object]
                $updateReplacePolicy
            )
            $this._updateReplacePolicy = $this.FormatDeletionPolicy($updateReplacePolicy)
        }

        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {
            $this.FormatDeletionPolicy($this._deletionPolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [FnRef]))] [object]
                $deletionPolicy
            )
            $this._deletionPolicy = $this.FormatDeletionPolicy($deletionPolicy)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {
            $this.FormatDeletionPolicy($this._updateReplacePolicy)
        } -SecondValue {
            param(
                [ValidateType(([string], [FnRef]))] [object]
                $updateReplacePolicy
            )
            $this._updateReplacePolicy = $this.FormatDeletionPolicy($updateReplacePolicy)
        }
    }

    VSResource() : base() {}
    VSResource([IDictionary] $props) : base($props) {}
    VSResource([psobject] $props) : base($props) {}
}
