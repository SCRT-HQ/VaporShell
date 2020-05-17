class Serializer {
    static [object] ToResource([object] $resource) {
        if ($null -ne $resource.Type -or ($resource -is [System.Collections.IDictionary] -and $null -ne $resource['Type'])) {
            return ($resource -as [Type]$resource.Type.Split('::')[-1])
        }
        else {
            return $resource
        }
    }
}
