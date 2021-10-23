class FnGetAtt : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnGetAtt'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html'
    hidden [string] $_topLevelKey = 'Fn::GetAtt'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 2. Count provided: $($inputData.Count)")
        }
    }

    FnGetAtt() : base() {}
    FnGetAtt([string] $logicalNameOfResourceAndAttribute) {
        if ($logicalNameOfResourceAndAttribute -notlike '*.*') {
            throw [VSError]::InvalidArgument(
                $logicalNameOfResourceAndAttribute,
                "If you are passing a single string to `Fn::GetAtt`, it must contain the LogicalId and Attribute joined by a single period. Value passed: $logicalNameOfResourceAndAttribute"
            )
        }
        $this[$this._topLevelKey] = $logicalNameOfResourceAndAttribute.Split('.',2)
    }

    FnGetAtt([string] $logicalNameOfResource, [string] $attributeName) {
        $this[$this._topLevelKey] = @($logicalNameOfResource,$attributeName)
    }
}
