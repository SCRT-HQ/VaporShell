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
        $validTypes = @([string], [int], [ConditionRef], [FnBase64], [FnFindInMap], [FnGetAtt], [FnGetAZs], [ConIf], [FnJoin], [FnSelect], [FnSub] [FnRef], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($valueIfTrue -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueIfTrue, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($valueIfFalse -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueIfFalse, $validTypes)
        }
        $this['Fn::If'] = @($conditionName,$valueIfTrue,$valueIfFalse)
    }
}
