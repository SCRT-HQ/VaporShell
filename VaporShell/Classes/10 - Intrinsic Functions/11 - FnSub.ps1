using namespace System
using namespace System.Collections

class FnSub : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnSub'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html'

    [string] ToString() {
        return "FnSub($($this['Fn::Sub']))"
    }

    FnSub() {}

    FnSub(
        [string] $string
    ) {
        $this['Fn::Sub'] = $String
    }

    FnSub(
        [string] $string,
        [IDictionary] $mapping
    ) {
        $this['Fn::Sub'] = @($String,$Mapping)
    }
}
