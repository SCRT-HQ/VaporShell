class ConIf : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConIf'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if'

    [string] ToString() {
        return "ConIf($($this['Fn::If']))"
    }

    ConIf() {}

    ConIf(
        [string] $conditionName,
        [object] $valueIfTrue,
        [object] $valueIfFalse
    ) {
        $final = @($conditionName)
        foreach ($item in @($valueIfTrue,$valueIfFalse)) {
            if ($item | Get-Member -Name ToOrderedDictionary* -MemberType Method -ErrorAction SilentlyContinue) {
                $final += $item.ToOrderedDictionary()
            }
            else {
                $final += $item
            }
        }
        $this['Fn::If'] = $final
    }
}
