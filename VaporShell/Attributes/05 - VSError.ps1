using namespace System
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSError : ErrorRecord {
    hidden static [VSError] InsertError([VSError] $vsErrorRecord) {
        if ($null -eq $global:VSError) {
            $global:VSError = [List[VSError]]::new()
        }
        $global:VSError.Insert(0, $vsErrorRecord)
        return $vsErrorRecord
    }

    static [VSError] InvalidType([object] $inputObject, [type[]] $validTypes) {
        $record = [VSError]::new(
            [ArgumentException]::new("$($inputObject.GetType().FullName) is an invalid type for this property. Valid types include: $(($validTypes.FullName | Sort-Object -Unique) -join ', ')"),
            'InvalidType',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] InvalidMap([object] $inputObject, [object] $key, [object] $value) {
        $record = [VSError]::new(
            [ArgumentException]::new("The values of the Map property must be IDictionarys themselves. Map key '$($key)' has a value of type '$($value.GetType())' assigned to it."),
            'InvalidMap',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] InvalidLogicalId([string] $inputObject) {
        $record = [VSError]::new(
            [ArgumentException]::new("The LogicalId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template. Value provided: '$inputObject'"),
            'InvalidLogicalId',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] InvalidArgument([object] $inputObject, [string] $message) {
        $record = [VSError]::new(
            [ArgumentException]::new($message),
            'InvalidArgument',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] MissingLogicalId([object] $inputObject, [string] $section) {
        $record = [VSError]::new(
            [ArgumentException]::new("This $($inputObject.GetType()) is missing a LogicalId! Unable to add to $section"),
            'MissingLogicalId',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] DuplicateLogicalId([object] $inputObject, [string] $section) {
        $record = [VSError]::new(
            [ArgumentException]::new("The Template already contains a $section with a LogicalId of '$($inputObject.LogicalId)'. LogicalIds must be unique within the Template."),
            'DuplicateLogicalId',
            [ErrorCategory]::InvalidArgument,
            $inputObject
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] InvalidJsonInput([string] $jsonStringOrFilePath) {
        $record = [VSError]::new(
            [ArgumentException]::new("Unable to convert input data from JSON to PSObject! Please use a JSON string OR provide a valid path to a JSON file!"),
            'InvalidJsonInput',
            [ErrorCategory]::InvalidArgument,
            $jsonStringOrFilePath
        )
        return [VSError]::InsertError($record)
    }

    static [VSError] InvalidYamlInput([string] $yamlStringOrFilePath) {
        $record = [VSError]::new(
            [ArgumentException]::new("Unable to convert input data from YAML to PSObject! Please use a YAML string OR provide a valid path to a YAML file!"),
            'InvalidYamlInput',
            [ErrorCategory]::InvalidArgument,
            $yamlStringOrFilePath
        )
        return [VSError]::InsertError($record)
    }

    VSError() {}

    VSError([ErrorRecord] $errorRecord) {
        foreach ($prop in $errorRecord.PSObject.Properties.Name) {
            if ($null -ne $errorRecord.$prop) {
                $this.$prop = $errorRecord.$prop
            }
        }
    }

    VSError([Exception] $exception, [string] $errorId, [ErrorCategory] $errorCategory, [object] $targetObject) : base($exception, $errorId, $errorCategory, $targetObject) {}
}
