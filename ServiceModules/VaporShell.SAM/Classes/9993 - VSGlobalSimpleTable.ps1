using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSGlobalSimpleTable : SAMSimpleTable {
    VSGlobalSimpleTable() : base() {}
    VSGlobalSimpleTable([IDictionary] $props) : base($props) {}
    VSGlobalSimpleTable([psobject] $props) : base($props) {}
}
