<#
using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSGlobalHttpApi : SAMHttpApi {
    VSGlobalHttpApi() : base() {}
    VSGlobalHttpApi([IDictionary] $props) : base($props) {}
    VSGlobalHttpApi([psobject] $props) : base($props) {}
}
#>
