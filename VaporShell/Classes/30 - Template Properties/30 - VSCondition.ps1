using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSCondition : VSHashtable {
    hidden [string] $_vsFunctionName = 'New-VaporCondition'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/conditions-section-structure.html'

    [ValidateLogicalId()] [string] $LogicalId
    [ConditionFunction] $Condition

    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'Condition' -Value {
            $this.ToOrderedDictionary()
        } -SecondValue {
            param([object] $value)
            if ($value -isnot [IDictionary] -and $value -isnot [psobject]) {
                throw [VSError]::InvalidType($value,@([IDictionary],[psobject]))
            }
            if ($value -is [IDictionary]) {
                $value.GetEnumerator() | ForEach-Object {
                    $this[$_.Key] = $_.Value
                }
            }
            elseif ($value -is [psobject]) {
                $value.PSObject.Properties | ForEach-Object {
                    $this[$_.Name] = $_.Value
                }
            }
        }
    }

    VSCondition() : base() {}
    VSCondition([IDictionary] $props) {
        $mainKey = $props.Keys | Select-Object -First 1
        $mainValue = $props.Values | Select-Object -First 1
        if (
            $null -ne $props.LogicalId -and
            $null -ne $props.Condition -and
            (
                $props.Condition -is [ConditionFunction] -or
                $null -ne $props.Condition.'Fn::And' -or
                $null -ne $props.Condition.'Fn::Equals' -or
                $null -ne $props.Condition.'Fn::If' -or
                $null -ne $props.Condition.'Fn::Not' -or
                $null -ne $props.Condition.'Fn::Or'
            )
        ) {
            Write-Debug "Creating VSCondition from correctly formed IDictionary"
            $this.LogicalId = $props.LogicalId
            $this.Condition = $props.Condition
        }
        elseif (
            $props.Keys.Count -eq 1 -and
            (
                $mainValue -is [ConditionFunction] -or
                $null -ne $mainValue.'Fn::And' -or
                $null -ne $mainValue.'Fn::Equals' -or
                $null -ne $mainValue.'Fn::If' -or
                $null -ne $mainValue.'Fn::Not' -or
                $null -ne $mainValue.'Fn::Or'
            )
        ) {
            Write-Debug "Creating VSCondition from raw IDictionary"
            $this.LogicalId = $mainKey
            $this.Condition = $mainValue
        }
        else {
            throw [VSError]::InvalidArgument($props,"Input IDictionary did not match expected contents, unable to construct a VSCondition object.")
        }
    }
    VSCondition([psobject] $props) {
        $mainKey = $props.PSObject.Properties.Name | Select-Object -First 1
        $mainValue = $props.PSObject.Properties.Value | Select-Object -First 1
        if (
            $null -ne $props.LogicalId -and
            $null -ne $props.Condition -and
            (
                $props.Condition -is [ConditionFunction] -or
                $null -ne $props.Condition.'Fn::And' -or
                $null -ne $props.Condition.'Fn::Equals' -or
                $null -ne $props.Condition.'Fn::If' -or
                $null -ne $props.Condition.'Fn::Not' -or
                $null -ne $props.Condition.'Fn::Or'
            )
        ) {
            Write-Debug "Creating VSCondition from correctly formed PSObject"
            $this.LogicalId = $props.LogicalId
            $this.Condition = $props.Condition
        }
        elseif (
            $props.PSObject.Properties.Name.Count -eq 1 -and
            (
                $mainValue -is [ConditionFunction] -or
                $null -ne $mainValue.'Fn::And' -or
                $null -ne $mainValue.'Fn::Equals' -or
                $null -ne $mainValue.'Fn::If' -or
                $null -ne $mainValue.'Fn::Not' -or
                $null -ne $mainValue.'Fn::Or'
            )
        ) {
            Write-Debug "Creating VSCondition from raw PSObject"
            $this.LogicalId = $mainKey
            $this.Condition = $mainValue
        }
        else {
            throw [VSError]::InvalidArgument($props,"Input PSObject did not match expected contents, unable to construct a VSCondition object.")
        }
    }
}
