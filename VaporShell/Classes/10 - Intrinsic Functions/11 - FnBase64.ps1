using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class FnBase64 : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnBase64'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html'
    hidden [string] $_topLevelKey = 'Fn::Base64'

    FnBase64() : base() {}
    FnBase64([object] $value) : base($value) {}
}
