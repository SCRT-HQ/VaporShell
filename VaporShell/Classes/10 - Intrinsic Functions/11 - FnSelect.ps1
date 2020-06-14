class FnSelect : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSelect'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html'
    hidden [string] $_topLevelKey = 'Fn::Select'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
    }

    FnSelect() : base() {}
    FnSelect([object] $value) : base($value) {}

    FnSelect(
        [object] $index,
        [object[]] $listOfObjects
    ) {
        $isValid = foreach ($type in $this._validTypes) {
            if ($index -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($index, $this._validTypes)
        }
        foreach ($value in $listOfObjects) {
            $isValid = foreach ($type in $this._validTypes) {
                if ($value -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($value, $this._validTypes)
            }
        }
        $this[$this._topLevelKey] = @($index, @($listOfObjects))
    }
}
