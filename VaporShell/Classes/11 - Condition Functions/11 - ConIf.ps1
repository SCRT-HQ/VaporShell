class ConIf : ConditionFunction {
    hidden [string] $_vsFunctionName = 'Add-ConIf'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if'
    hidden [string] $_topLevelKey = 'Fn::If'
    hidden [type[]] $_validTypes = @( [string], [int], [bool], [IDictionary], [psobject], [VSObject], [VSHashtable] )

    hidden [void] _validateInput([object[]] $inputData) {
        if ($inputData.Count -ne 3) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
        elseif ($inputData[0] -isnot [string]) {
            throw [VSError]::InvalidArgument($inputData, "The first item provided when constructing a <$($this.GetType())> object needs to be a string. Type provided: $($inputData[0].GetType())")
        }
    }

    ConIf() : base() {}
    ConIf([object[]] $conditions) : base($conditions) {}

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
        $this[$this._topLevelKey] = $final
    }
}
