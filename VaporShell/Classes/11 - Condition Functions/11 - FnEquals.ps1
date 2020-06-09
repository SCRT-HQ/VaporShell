class FnEquals : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConEquals'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals'

    [string] ToString() {
        return "FnEquals($($this['Fn::Equals']))"
    }

    FnEquals() {}

    FnEquals([object[]] $value) {
        $validTypes = @([string], [int], [FnFindInMap], [FnRef], [ConditionFunction])
        foreach ($item in $value) {
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
        $this['Fn::Equals'] = $value
    }
}
