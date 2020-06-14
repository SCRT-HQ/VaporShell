class ConNot : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConNot'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not'
    hidden [string] $_topLevelKey = 'Fn::Not'

    [object[]] $Conditions

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Conditions -Value {
            $this[$this._topLevelKey]
        } -SecondValue {
            param([ValidateType(([ConditionFunction]))] [object[]] $value)
            $this[$this._topLevelKey] = $value
        }
    }

    ConNot() {}
    ConNot([object[]] $conditions) : base($conditions) {}
}
