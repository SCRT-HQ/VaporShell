class FnGetAtt : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnGetAtt'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html'
    hidden [string] $_topLevelKey = 'Fn::GetAtt'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
    }

    FnGetAtt() : base() {}
    FnGetAtt([object] $value) : base($value) {}

    FnGetAtt([string] $logicalNameOfResource, [string] $attributeName) {
        $this[$this._topLevelKey] = @($logicalNameOfResource,$attributeName)
    }
}
