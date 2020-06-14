using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class ConRef : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-FnRef'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or'
    hidden [string] $_topLevelKey = 'Condition'

    [string] $Condition

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Condition -Value {
            $this[$this._topLevelKey]
        } -SecondValue {
            param([string] $conditionName)
            $this[$this._topLevelKey] = $conditionName
        }
    }

    ConRef() {}

    ConRef([string] $condition) {
        $this[$this._topLevelKey] = $condition
    }

    ConRef([VSCondition] $vsCondition) {
        $this[$this._topLevelKey] = $vsCondition.ToString()
    }
}
