using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class AutoScalingReplacingUpdate : VSObject {
    hidden [string] $_vsFunctionName = 'Add-UpdatePolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-replacingupdate'

    [nullable[bool]] $WillReplace = $null

    AutoScalingReplacingUpdate() : base() {}
    AutoScalingReplacingUpdate([bool] $willReplace) {
        $this.WillReplace = $willReplace
    }
    AutoScalingReplacingUpdate([IDictionary] $props) : base($props) {}
    AutoScalingReplacingUpdate([psobject] $props) : base($props) {}
}
