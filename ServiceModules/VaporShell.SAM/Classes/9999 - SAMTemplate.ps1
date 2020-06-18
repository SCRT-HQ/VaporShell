using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class SAMTemplate : VSTemplate {
    [VSGlobal] $Globals = $null

    hidden [void] _addExtraAccessors() {
        $this.AddTransform('Serverless')
    }

    SAMTemplate() : base() {}
    SAMTemplate([IDictionary] $props) : base($props) {}
    SAMTemplate([psobject] $props) : base($props) {}
}
