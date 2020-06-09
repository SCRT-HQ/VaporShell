using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class CreationPolicy : VSObject {
    hidden [string] $_vsFunctionName = 'Add-CreationPolicy'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html'

    [AutoScalingCreationPolicy] $AutoScalingCreationPolicy
    [ResourceSignal] $ResourceSignal

    CreationPolicy() : base() {}
    CreationPolicy([IDictionary] $props) : base($props) {}
    CreationPolicy([psobject] $props) : base($props) {}
}
