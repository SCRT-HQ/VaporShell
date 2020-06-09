using namespace System.Management.Automation

class FnGetAZs : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnGetAZs'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getavailabilityzones.html'

    [string] ToString() {
        return "FnGetAZs($($this['Fn::GetAZs']))"
    }

    FnGetAZs() {}

    FnGetAZs([object] $region) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($region -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($region, $validTypes)
        }
        $this['Fn::GetAZs'] = $region
    }
}
