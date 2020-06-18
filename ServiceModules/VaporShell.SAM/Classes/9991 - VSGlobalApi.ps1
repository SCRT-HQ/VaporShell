using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSGlobalApi : SAMApi {
    VSGlobalApi() : base() {}
    VSGlobalApi([IDictionary] $props) : base($props) {}
    VSGlobalApi([psobject] $props) : base($props) {}
}
