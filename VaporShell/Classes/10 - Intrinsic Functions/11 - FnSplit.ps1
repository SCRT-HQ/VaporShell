using namespace System
using namespace System.Collections

class FnSplit : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSplit'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html'

    [string] ToString() {
        return "FnSplit($($this['Fn::Split']))"
    }

    FnSplit() {}

    FnSplit(
        [string] $delimiter,
        [object] $sourceString
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($sourceString -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($sourceString, $validTypes)
        }
        $this['Fn::Split'] = @($delimiter,$sourceString)
    }
}
