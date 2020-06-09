using namespace System.Management.Automation

class FnImportValue : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnImportValue'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html'

    [string] ToString() {
        return "FnImportValue($($this['Fn::ImportValue']))"
    }

    FnImportValue() {}

    FnImportValue([object] $valueToImport) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($valueToImport -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueToImport, $validTypes)
        }
        $this['Fn::ImportValue'] = $valueToImport
    }
}
