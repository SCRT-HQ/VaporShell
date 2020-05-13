class Validator {
    static [string] LogicalId([string] $logicalId) {
        if ($logicalId -match '^[a-zA-Z0-9]*$') {
            return $logicalId
        }
        else {
            throw "The LogicalId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template. Value provided: '$logicalId'"
        }
    }

    static [object] PropertyValue([object] $value, [type[]] $validTypes) {
        if ($value.GetType().FullName -in $validTypes.FullName) {
            return $value
        }
        else {
            throw "$($value.GetType()) is not in the list of valid types for this property: $validTypes"
        }
    }
}
