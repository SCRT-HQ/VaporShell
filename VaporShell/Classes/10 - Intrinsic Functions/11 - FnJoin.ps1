class FnJoin : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnJoin'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html'

    [string] ToString() {
        return "FnJoin($($this['Fn::Join']))"
    }

    FnJoin() {}

    FnJoin(
        [string] $delimiter,
        [object[]] $listOfValues
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        foreach ($value in $listOfValues) {
            $isValid = foreach ($type in $validTypes) {
                if ($value -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($value, $validTypes)
            }
        }
        $this['Fn::Join'] = @($delimiter, @($listOfValues))
    }
}
