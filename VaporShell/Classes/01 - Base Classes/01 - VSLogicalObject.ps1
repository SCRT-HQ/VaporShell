class VSLogicalObject : VSObject {
    [ValidateLogicalId()] [string] $LogicalId

    [string] ToString() {
        return $this.LogicalId
    }

    VSLogicalObject() : base() {}
    VSLogicalObject([IDictionary] $props) : base($props) {}
    VSLogicalObject([psobject] $props) : base($props) {}
}
