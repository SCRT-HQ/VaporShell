class FnJoin : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnJoin'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html'
    hidden [string] $_topLevelKey = 'Fn::Join'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
        elseif ($inputData[0] -isnot [string]) {
            throw [VSError]::InvalidArgument($inputData, "The first item provided when constructing a <$($this.GetType())> object needs to be a string. Type provided: $($inputData[0].GetType())")
        }
    }

    FnJoin() : base() {}
    FnJoin([object] $value) : base($value) {}

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
        $this[$this._topLevelKey] = @($delimiter, @($listOfValues))
    }
}
