using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSOutput : VSLogicalObject {
    hidden [object] $_value
    [string] $Description
    [string] $Value
    [Export] $Export

    VSOutput() : base() {}
    VSOutput([IDictionary] $props) : base($props) {}
    VSOutput([psobject] $props) : base($props) {}
}
