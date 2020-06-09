class FnIf : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConIf'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if'

    [string] ToString() {
        return "FnIf($($this['Fn::If']))"
    }

    FnIf() {}

    FnIf(
        [string] $conditionName,
        [object] $valueIfTrue,
        [object] $valueIfFalse
    ) {
        $validTypes = @([string], [int], [FnBase64], [FnFindInMap], [FnGetAtt], [FnGetAZs], [FnIf], [FnJoin], [FnSelect], [FnSub] [FnRef], [ConditionFunction])
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
