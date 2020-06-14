using namespace System.Management.Automation

class FnCidr : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnCidr'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html'
    hidden [string] $_topLevelKey = 'Fn::Cidr'

    hidden [void] _validateInput([object] $inputData) {
        if ($inputData.Count -ne 3) {
            throw [VSError]::InvalidArgument($inputData, "Total input item count when constructing a <$($this.GetType())> object needs to be 3. Count provided: $($inputData.Count)")
        }
    }

    FnCidr() : base() {}
    FnCidr([object] $value) : base($value) {}

    FnCidr(
        [object] $ipBlock,
        [object] $count,
        [object] $cidrBits
    ) {
        foreach ($item in @($ipBlock,$count,$cidrBits)) {
            $isValid = foreach ($type in $this._validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $this._validTypes)
            }
        }
        $this[$this._topLevelKey] = @($ipBlock, $count, $cidrBits)
    }
}
