class FnSelect : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSelect'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html'

    [string] ToString() {
        return "FnSelect($($this['Fn::Select']))"
    }

    FnSelect() {}

    FnSelect(
        [object] $index,
        [object[]] $listOfObjects
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($index -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($index, $validTypes)
        }
        foreach ($value in $listOfObjects) {
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
        $this['Fn::Select'] = @($index, @($listOfObjects))
    }
}
