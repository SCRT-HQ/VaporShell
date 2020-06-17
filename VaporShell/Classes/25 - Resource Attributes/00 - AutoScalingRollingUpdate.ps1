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
    [nullable[bool]] $WaitOnResourceSignals = $null

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name MaxBatchSize -Value {
            $this._maxBatchSize
        } -SecondValue {
            param([object] $value)
            if ($null -ne ($value -as [int])) {
                $this._maxBatchSize = $value -as [int]
            }
            elseif ($value -is [IntrinsicFunction] -or $value -is [ConditionFunction]) {
                $this._maxBatchSize = $value
            }
            else {
                throw [VSError]::InvalidArgument($value,"$($this.GetType()) - Invalid value for property MaxBatchSize")
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name MinInstancesInService -Value {
            $this._minInstancesInService
        } -SecondValue {
            param([object] $value)
            if ($null -ne ($value -as [int])) {
                $this._minInstancesInService = $value -as [int]
            }
            elseif ($value -is [IntrinsicFunction] -or $value -is [ConditionFunction]) {
                $this._minInstancesInService = $value
            }
            else {
                throw [VSError]::InvalidArgument($value,"$($this.GetType()) - Invalid value for property MinInstancesInService")
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name MinSuccessfulInstancesPercent -Value {
            $this._minSuccessfulInstancesPercent
        } -SecondValue {
            param([object] $value)
            if ($null -ne ($value -as [int])) {
                $this._minSuccessfulInstancesPercent = $value -as [int]
            }
            elseif ($value -is [IntrinsicFunction] -or $value -is [ConditionFunction]) {
                $this._minSuccessfulInstancesPercent = $value
            }
            else {
                throw [VSError]::InvalidArgument($value,"$($this.GetType()) - Invalid value for property MinSuccessfulInstancesPercent")
            }
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
