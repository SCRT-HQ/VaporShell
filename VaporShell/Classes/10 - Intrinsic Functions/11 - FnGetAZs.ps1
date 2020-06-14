using namespace System.Management.Automation

class FnGetAZs : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnGetAZs'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getavailabilityzones.html'
    hidden [string] $_topLevelKey = 'Fn::GetAZs'

    FnGetAZs() { $this[$this._topLevelKey] = '' }
    FnGetAZs([object] $value) : base($value) {}
}
