using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSGlobalFunction : SAMFunction {
    VSGlobalFunction() : base() {}
    VSGlobalFunction([IDictionary] $props) : base($props) {}
    VSGlobalFunction([psobject] $props) : base($props) {}
}
