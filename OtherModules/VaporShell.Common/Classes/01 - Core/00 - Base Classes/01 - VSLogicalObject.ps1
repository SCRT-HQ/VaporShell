class VSLogicalObject : VSObject {
    [ValidateLogicalId()] [string] $LogicalId

    VSLogicalObject() : base() {}
    VSLogicalObject([IDictionary] $props) : base($props) {}
    VSLogicalObject([psobject] $props) : base($props) {}
}
