using namespace System
using namespace System.Collections
using namespace System.Collections.Generic

class VSResourceProperty : VSObject {
    VSResourceProperty() : base() {}
    VSResourceProperty([IDictionary] $props) : base($props) {}
    VSResourceProperty([psobject] $props) : base($props) {}
}
