using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSResourceTag : VSHashtable {
    [string] $Key
    [object] $Value

    static [VSResourceTag[]] TransformTag([IDictionary] $inputData) {
        $final = [List[VSResourceTag]]::new()
        if ($inputData['Key'] -and $inputData['Value']) {
            $final.Add(
                [VSResourceTag]@{
                    Key   = $inputData['Key']
                    Value = $inputData['Value']
                }
            )
        }
        else {
            $inputData.GetEnumerator() | ForEach-Object {
                $final.Add(
                    [VSResourceTag]@{
                        Key   = $_.Key
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    static [VSResourceTag[]] TransformTag([PSObject] $inputData) {
        $final = [List[VSResourceTag]]::new()
        if ($inputData.PSObject.Properties.Name -contains 'Key' -and $inputData.PSObject.Properties.Name -contains 'Value') {
            $final.Add(
                [VSResourceTag]@{
                    Key   = $inputData.Key
                    Value = $inputData.Value
                }
            )
        }
        else {
            $inputData.PSObject.Properties | ForEach-Object {
                $final.Add(
                    [VSResourceTag]@{
                        Key   = $_.Name
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    VSResourceTag([IDictionary] $inputData) {
        $this.Key = $inputData['Key']
        $this.Value = $inputData['Value']
    }

    VSResourceTag([object] $key, [object] $value) {
        $this.Key = $key.ToString()
        $this.Value = $value
    }
}

class VSResourceProperties : VSHashtable {
    VSResourceProperties() : base() {}
    VSResourceProperties([IDictionary] $props) : base($props) {}
    VSResourceProperties([psobject] $props) : base($props) {}
}

class VSResource : VSObject {
    hidden [string] $_logicalId
    hidden [object] $_deletionPolicy
    hidden [object] $_updateReplacePolicy

    [string] $LogicalId
    [string] $Type
    [VSResourceProperties] $Properties = [VSResourceProperties]::new()
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
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value { $this._logicalId } -SecondValue {
            param([string] $logicalId)
            $this._logicalId = [Validator]::LogicalId($logicalId)
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value { $this._deletionPolicy } -SecondValue {
            param([ValidateType(([string], [FnRef]))][object] $deletionPolicy)
            if ($deletionPolicy -as [DeletionPolicy]) {
                $this._deletionPolicy = $deletionPolicy.ToString()
            }
            else {
                $this._deletionPolicy = $deletionPolicy
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value { $this._updateReplacePolicy } -SecondValue {
            param([ValidateType(([string], [FnRef]))][object] $updateReplacePolicy)
            if ($updateReplacePolicy -as [UpdateReplacePolicy]) {
                $this._updateReplacePolicy = $updateReplacePolicy.ToString()
            }
            else {
                $this._updateReplacePolicy = $updateReplacePolicy
            }
        }
    }

    VSResource() : base() {}
    VSResource([IDictionary] $props) : base($props) {}
    VSResource([psobject] $props) : base($props) {}
}
