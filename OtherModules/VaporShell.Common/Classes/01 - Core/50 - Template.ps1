class Template : VSObject {
    hidden [hashtable] $_resources = @{}
    [string] $AWSTemplateFormatVersion
    [object] $Transform
    [string] $Description
    [object] $Parameters
    [object] $Mappings
    [Resource[]] $Resources
    [object] $Outputs
    [object] $Rules

    static [string] Help() {
        $help = "This is the Template help."
        return $help
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddResource([Resource] $resource) {
        if ($this._resources.ContainsKey($resource.LogicalId)) {
            throw "The Template already contains a Resource with a LogicalId of '$($resource.LogicalId)'. LogicalId must be unique within the Template."
        }
        else {
            $this._resources[$resource.LogicalId] = $resource.ToOrderedDictionary()
        }
    }

    [void] AddResource([Resource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {
            $this._resources.GetEnumerator() | ForEach-Object {
                $new = [ordered]@{}
                $new['LogicalId'] = $_.Key
                $_.Value.GetEnumerator() | ForEach-Object {
                    $new[$_.Key] = $_.Value
                }
                [Serializer]::ToResource($new)
            }
        } -SecondValue {
            param([Resource[]] $resources)
            $this.AddResource($resources)
        }
    }

    Template() : base() {}
    Template([hashtable] $props) : base($props) {}
    Template([psobject] $props) : base($props)  {}
}
