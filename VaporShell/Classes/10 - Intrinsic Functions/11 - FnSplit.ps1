using namespace System
using namespace System.Collections

class FnSplit : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSplit'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html'
    hidden [string] $_topLevelKey = 'Fn::Split'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 2) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
        elseif ($inputData[0] -isnot [string]) {
            throw [VSError]::InvalidArgument($inputData, "The first item provided when constructing a <$($this.GetType())> object needs to be a string. Type provided: $($inputData[0].GetType())")
        }
    }

    FnSplit() : base() {}
    FnSplit([object] $value) : base($value) {}

    FnSplit(
        [string] $delimiter,
        [object] $sourceString
    ) {
        $isValid = foreach ($type in $this._validTypes) {
            if ($sourceString -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($sourceString, $this._validTypes)
        }
        $this[$this._topLevelKey] = @($delimiter,$sourceString)
    }
}
