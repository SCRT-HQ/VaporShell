class ConOr : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConOr'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or'
    hidden [string] $_topLevelKey = 'Fn::Or'

    [object[]] $Conditions

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Conditions -Value {
            $this[$this._topLevelKey]
        } -SecondValue {
            param([ValidateType(([ConditionFunction]))] [object[]] $value)
            $this[$this._topLevelKey] = $value
        }
    }

    ConOr() {}
    ConOr([object[]] $conditions) : base($conditions) {}
}
