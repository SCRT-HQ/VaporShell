using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class ConditionRef : VSObject {
    [string] $Condition

    ConditionRef([string] $condition) {
        $this.Condition = $condition
    }

    ConditionRef() : base() {}
    ConditionRef([IDictionary] $props) : base($props) {}
    ConditionRef([psobject] $props) : base($props) {}
}
