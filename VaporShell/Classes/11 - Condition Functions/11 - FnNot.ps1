class FnNot : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConNot'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not'

    [string] ToString() {
        return "FnNot($($this['Fn::Not']))"
    }

    FnNot() {}

    FnNot([object[]] $condition) {
        $validTypes = @([string], [int], [FnFindInMap], [FnRef], [ConditionFunction])
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
        $this['Fn::Not'] = @($condition)
    }
}
