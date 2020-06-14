using namespace System.Management.Automation

class FnImportValue : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnImportValue'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html'
    hidden [string] $_topLevelKey = 'Fn::ImportValue'

    FnImportValue() : base() {}
    FnImportValue([object] $value) : base($value) {}
}
