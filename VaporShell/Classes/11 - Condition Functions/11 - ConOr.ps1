class ConOr : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConOr'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or'

    [string] ToString() {
        return "ConOr($($this['Fn::Or']))"
    }

    ConOr() {}

    ConOr([object[]] $condition) {
        $validTypes = @([string], [int], [ConditionRef], [FnFindInMap], [FnRef], [ConditionFunction])
        foreach ($item in $condition) {
            $isValid = foreach ($type in $validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $validTypes)
            }
        }
        $this['Fn::Or'] = @($condition)
    }
}
