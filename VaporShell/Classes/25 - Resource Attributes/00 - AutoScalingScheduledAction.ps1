using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class AutoScalingScheduledAction : VSObject {
    hidden [string] $_vsFunctionName = 'Add-UpdatePolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-scheduledactions'

    [bool] $IgnoreUnmodifiedGroupSizeProperties

    AutoScalingScheduledAction() : base() {}
    AutoScalingScheduledAction([bool] $ignoreUnmodifiedGroupSizeProperties) {
        $this.IgnoreUnmodifiedGroupSizeProperties = $ignoreUnmodifiedGroupSizeProperties
    }
    AutoScalingScheduledAction([IDictionary] $props) : base($props) {}
    AutoScalingScheduledAction([psobject] $props) : base($props) {}
}
