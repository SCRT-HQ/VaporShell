using namespace System.Management.Automation

class FnCidr : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnCidr'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html'

    [string] ToString() {
        return "FnCidr($($this['Fn::Cidr']))"
    }

    FnCidr() {}

    FnCidr(
        [object] $ipBlock,
        [object] $count,
        [object] $cidrBits
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($ipBlock -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($ipBlock, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($count -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($count, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($cidrBits -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($cidrBits, $validTypes)
        }
        $this['Fn::Cidr'] = @($ipBlock, $count, $cidrBits)
    }
}
