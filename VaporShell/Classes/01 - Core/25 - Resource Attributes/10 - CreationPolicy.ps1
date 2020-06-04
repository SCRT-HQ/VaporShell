using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class CreationPolicy : VSObject {
    [AutoScalingCreationPolicy] $AutoScalingCreationPolicy
    [ResourceSignal] $ResourceSignal

    CreationPolicy() : base() {}
    CreationPolicy([IDictionary] $props) : base($props) {}
    CreationPolicy([psobject] $props) : base($props) {}
}
