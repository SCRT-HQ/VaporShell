using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class AutoScalingCreationPolicy : VSObject {
    hidden [string] $_vsFunctionName = 'Add-CreationPolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html#cfn-attributes-creationpolicy-autoscalingcreationpolicy'

    hidden [object] $_minSuccessfulInstancesPercent

    [ValidateRange(0,100)] [int]
    $MinSuccessfulInstancesPercent

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name MinSuccessfulInstancesPercent -Value {
            $this._minSuccessfulInstancesPercent
        } -SecondValue {
            param(
                [object]
                $minSuccessfulInstancesPercent
            )
            if (
                $minSuccessfulInstancesPercent -as [int] -and
                (
                    ($minSuccessfulInstancesPercent -as [int]) -gt 100 -or
                    ($minSuccessfulInstancesPercent -as [int]) -lt 0
                )
            ) {
                $errorRecord = [VSError]::new(
                    [ArgumentException]::new("MinSuccessfulInstancesPercent must be an integer between 0-100!"),
                    'InvalidMinSuccessfulInstancesPercent',
                    [ErrorCategory]::InvalidArgument,
                    $minSuccessfulInstancesPercent
                )
                throw [VSError]::InsertError($errorRecord)
            }
            if ($cast = $minSuccessfulInstancesPercent -as [int]) {
                $this._minSuccessfulInstancesPercent = $cast
            }
            elseif ($value -is [IntrinsicFunction] -or $value -is [ConditionFunction]) {
                $this._minSuccessfulInstancesPercent = $minSuccessfulInstancesPercent
            }
            else {
                throw [VSError]::InvalidArgument($minSuccessfulInstancesPercent,"$($this.GetType()) - Invalid value for property MinSuccessfulInstancesPercent")
            }
        }
    }

    AutoScalingCreationPolicy() : base() {}
    AutoScalingCreationPolicy([IDictionary] $props) : base($props) {}
    AutoScalingCreationPolicy([psobject] $props) : base($props) {}
}
