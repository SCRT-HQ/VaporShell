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
                [ValidateType(([int], [IntrinsicFunction], [ConditionFunction]))] [object]
                $minSuccessfulInstancesPercent
            )
            if (
                $minSuccessfulInstancesPercent -is [int] -and
                (
                    $minSuccessfulInstancesPercent -gt 100 -or
                    $minSuccessfulInstancesPercent -lt 0
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
            $this._minSuccessfulInstancesPercent = $minSuccessfulInstancesPercent
        }
    }

    AutoScalingCreationPolicy() : base() {}
    AutoScalingCreationPolicy([IDictionary] $props) : base($props) {}
    AutoScalingCreationPolicy([psobject] $props) : base($props) {}
}
