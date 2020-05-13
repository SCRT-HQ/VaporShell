class ResourceProperties : VSObject {
    ResourceProperties() : base() {}
    ResourceProperties([hashtable] $props) : base($props) {}
    ResourceProperties([psobject] $props) : base($props)  {}
}

class Resource : VSObject {
    hidden [string] $_logicalId
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [string] $LogicalId
    [string] $Type
    [ResourceProperties] $Properties
    [object] $Condition
    [object] $CreationPolicy
    [object] $UpdatePolicy
    [DeletionPolicy] $DeletionPolicy
    [UpdateReplacePolicy] $UpdateReplacePolicy
    [string[]] $DependsOn
    [object] $Metadata


    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value {$this._logicalId} -SecondValue {
            param([string] $logicalId)
            $this._logicalId = [Validator]::LogicalId($logicalId)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {$this._deletionPolicy} -SecondValue {
            param([object] $deletionPolicy)
            if ($deletionPolicy -is [DeletionPolicy]) {
                $this._deletionPolicy = $deletionPolicy.ToString()
            }
            else {
                $this._deletionPolicy = $deletionPolicy
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {$this._updateReplacePolicy} -SecondValue {
            param([object] $updateReplacePolicy)
            if ($updateReplacePolicy -is [UpdateReplacePolicy]) {
                $this._updateReplacePolicy = $updateReplacePolicy.ToString()
            }
            else {
                $this._updateReplacePolicy = $updateReplacePolicy
            }
        }
    }

    Resource() : base() {}
    Resource([hashtable] $props) : base($props) {}
    Resource([psobject] $props) : base($props)  {}
}
