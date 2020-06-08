using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSCondition : VSLogicalObject {
    [ConditionFunction] $Condition

    VSCondition() : base() {}
    VSCondition([IDictionary] $props) : base($props) {}
    VSCondition([psobject] $props) : base($props) {}
}
