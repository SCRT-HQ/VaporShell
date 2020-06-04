using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class UpdatePolicy : VSObject {
    [AutoScalingCreationPolicy] $AutoScalingCreationPolicy
    [ResourceSignal] $ResourceSignal

    UpdatePolicy() : base() {}
    UpdatePolicy([IDictionary] $props) : base($props) {}
    UpdatePolicy([psobject] $props) : base($props) {}
}
