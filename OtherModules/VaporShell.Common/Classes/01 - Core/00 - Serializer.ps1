class Serializer {
    static [object] ToResource([object] $resource) {
        if ($null -ne $resource.Type) {
            $className = $resource.Type.Split('::')[-1]
            try {
                $newObj = New-Object $className -ArgumentList $resource
            }
            catch {
                return $resource
            }
            return $newObj
        }
        else {
            return $resource
        }
    }
}
