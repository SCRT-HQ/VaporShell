using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class ConAnd : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConAnd'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and'
    hidden [string] $_topLevelKey = 'Fn::And'

    [ValidateCount(2,10)] [object[]] $Conditions

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Conditions -Value {
            $this[$this._topLevelKey]
        } -SecondValue {
            param([ValidateType(([ConditionFunction]))] [object[]] $value)
            $this[$this._topLevelKey] = $value
        }
    }

    hidden [void] _validateInput([object[]] $inputData) {
        if ($inputData.Count -lt 2 -or $inputData.Count -gt 10) {
            throw [VSError]::InvalidArgument($inputData, "$($inputData.Count) condition(s) provided! The minimum number of conditions that you can include is 2, and the maximum is 10.")
        }
    }

    ConAnd() : base() {}
    ConAnd([object[]] $conditions) : base($conditions) {}
}
