class ResourceTag {
    [string] $Key
    [object] $Value

    ResourceTag([object] $key, [object] $value) {
        $this.Key = $key.ToString()
        $this.Value = $value
    }
}

class ResourceProperties : VSHashtable {
    ResourceProperties() : base() {}
    ResourceProperties([System.Collections.IDictionary] $props) : base($props) {}
    ResourceProperties([psobject] $props) : base($props)  {}
}

class Resource : VSObject {
    hidden [string] $_logicalId
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [string] $LogicalId
    [string] $Type
    [ResourceProperties] $Properties = [ResourceProperties]::new()
    [object] $Condition
    [object] $CreationPolicy
    [object] $UpdatePolicy
    [object] $DeletionPolicy
    [object] $UpdateReplacePolicy
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
            param([ValidateType(([string],[FnRef]))][object] $deletionPolicy)
            if ($deletionPolicy -as [DeletionPolicy]) {
                $this._deletionPolicy = $deletionPolicy.ToString()
            }
            else {
                $this._deletionPolicy = $deletionPolicy
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {$this._updateReplacePolicy} -SecondValue {
            param([ValidateType(([string],[FnRef]))][object] $updateReplacePolicy)
            if ($updateReplacePolicy -as [UpdateReplacePolicy]) {
                $this._updateReplacePolicy = $updateReplacePolicy.ToString()
            }
            else {
                $this._updateReplacePolicy = $updateReplacePolicy
            }
        }
    }

    Resource() : base() {}
    Resource([System.Collections.IDictionary] $props) : base($props) {}
    Resource([psobject] $props) : base($props)  {}
}
