using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class AutoScalingRollingUpdate : VSObject {
    hidden [string] $_vsFunctionName = 'Add-UpdatePolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-replacingupdate'

    hidden [object] $_maxBatchSize
    hidden [object] $_minInstancesInService
    hidden [object] $_minSuccessfulInstancesPercent
    hidden [object] $_pauseTime
    hidden [string[]] $_suspendProcesses = $null

    [int] $MaxBatchSize
    [int] $MinInstancesInService
    [int] $MinSuccessfulInstancesPercent
    [string] $PauseTime
    [AutoScalingProcess[]] $SuspendProcesses
    [bool] $WaitOnResourceSignals

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name MaxBatchSize -Value {
            $this._maxBatchSize
        } -SecondValue {
            param(
                [ValidateType(([int], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._maxBatchSize = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name MinInstancesInService -Value {
            $this._minInstancesInService
        } -SecondValue {
            param(
                [ValidateType(([int], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._minInstancesInService = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name MinSuccessfulInstancesPercent -Value {
            $this._minSuccessfulInstancesPercent
        } -SecondValue {
            param(
                [ValidateType(([int], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            $this._minSuccessfulInstancesPercent = $value
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name PauseTime -Value {
            $this._pauseTime
        } -SecondValue {
            param(
                [ValidateType(([string], [TimeSpan], [IntrinsicFunction], [ConditionFunction]))] [object]
                $value
            )
            if ($ts = $value -as [TimeSpan]) {
                $pt = 'P'
                if ($ts.Days) {
                    $pt += ("{0}D" -f $ts.Days)
                }
                if ($ts.Hours + $ts.Minutes + $ts.Seconds) {
                    $pt += 'T'
                    if ($ts.Hours) {
                        $pt += ("{0}H" -f $ts.Hours)
                    }
                    if ($ts.Minutes) {
                        $pt += ("{0}M" -f $ts.Minutes)
                    }
                    if ($ts.Seconds) {
                        $pt += ("{0}S" -f $ts.Seconds)
                    }
                }
                $this._pauseTime = $pt
            }
            elseif ($value -is [string] -and $value -notmatch '^P((?<Years>[\d\.,]+)Y)?((?<Months>[\d\.,]+)M)?((?<Weeks>[\d\.,]+)W)?((?<Days>[\d\.,]+)D)?(?<Time>T((?<Hours>[\d\.,]+)H)?((?<Minutes>[\d\.,]+)M)?((?<Seconds>[\d\.,]+)S)?)?$') {
                $errorRecord = [VSError]::new(
                    [ArgumentException]::new("Value '$value' is not a valid ISO8601 duration string!"),
                    'InvalidPauseTime',
                    [ErrorCategory]::InvalidArgument,
                    $value
                )
                throw [VSError]::InsertError($errorRecord)
            }
            else {
                $this._pauseTime = $value
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name SuspendProcesses -Value {
            $this._suspendProcesses
        } -SecondValue {
            param(
                [AutoScalingProcess[]] $value
            )
            if ($null -eq $this._suspendProcesses) {
                $this._suspendProcesses = @()
            }
            foreach ($proc in $value) {
                $this._suspendProcesses += $proc.ToString()
            }
        }
    }

    AutoScalingRollingUpdate() : base() {}
    AutoScalingRollingUpdate([IDictionary] $props) : base($props) {}
    AutoScalingRollingUpdate([psobject] $props) : base($props) {}
}
