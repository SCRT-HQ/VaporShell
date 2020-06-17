using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class UpdatePolicy : VSObject {
    hidden [string] $_vsFunctionName = 'Add-UpdatePolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html'

    [AutoScalingReplacingUpdate] $AutoScalingReplacingUpdate
    [AutoScalingRollingUpdate] $AutoScalingRollingUpdate
    [AutoScalingScheduledAction] $AutoScalingScheduledAction
    [CodeDeployLambdaAliasUpdate] $CodeDeployLambdaAliasUpdate
    [nullable[bool]] $EnableVersionUpgrade = $null
    [nullable[bool]] $UseOnlineResharding = $null

    UpdatePolicy() : base() {}
    UpdatePolicy([IDictionary] $props) : base($props) {}
    UpdatePolicy([psobject] $props) : base($props) {}
}
