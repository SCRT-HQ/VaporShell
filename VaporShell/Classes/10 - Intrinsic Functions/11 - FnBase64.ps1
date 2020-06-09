using namespace System.Management.Automation

class FnBase64 : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnBase64'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html'

    [string] ToString() {
        return "FnBase64($($this['Fn::Base64']))"
    }

    FnBase64() {}

    FnBase64([object] $value) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($value -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($value, $validTypes)
        }
        $this['Fn::Base64'] = $value
    }
}
