using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSGlobal : VSObject {
    [VSGlobalFunction] $Function
    [VSGlobalApi] $Api
    # [VSGlobalHttpApi] $HttpApi # Not on the goformation spec sheet yet
    [VSGlobalSimpleTable] $SimpleTable

    VSGlobal() : base() {}
    VSGlobal([IDictionary] $props) : base($props) {}
    VSGlobal([psobject] $props) : base($props) {}
}
