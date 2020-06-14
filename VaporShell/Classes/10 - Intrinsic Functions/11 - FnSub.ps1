using namespace System
using namespace System.Collections

class FnSub : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSub'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html'
    hidden [string] $_topLevelKey = 'Fn::Sub'

    FnSub() {}
    FnSub([string] $string) {
        $this['Fn::Sub'] = $String
    }

    FnSub(
        [string] $string,
        [IDictionary] $mapping
    ) {
        $this['Fn::Sub'] = @($String,$Mapping)
    }
}
