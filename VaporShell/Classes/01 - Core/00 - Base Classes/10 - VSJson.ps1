using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class VSJson : VSHashtable {
    static [psobject] Transform([string] $jsonStringOrFilePath) {
        $newData = if (Test-Path $jsonStringOrFilePath) {
            $resolvedPath = (Resolve-Path $jsonStringOrFilePath).Path
            [File]::ReadAllText($resolvedPath)
        }
        else {
            $jsonStringOrFilePath
        }
        try {
            $final = (ConvertFrom-Json -InputObject $newData -ErrorAction Stop)
        }
        catch {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new("Unable to convert input data from JSON to PSObject! Please use a JSON string OR provide a valid path to a JSON file!"),
                'InvalidJsonInput',
                [ErrorCategory]::InvalidArgument,
                $jsonStringOrFilePath
            )
            throw $errorRecord
        }
        return $final
    }

    VSJson() : base() {}
    VSJson([IDictionary] $dictionary) {
        $dictionary.GetEnumerator() | ForEach-Object {
            $this[$_.Key] = $_.Value
        }
    }
    VSJson([psobject] $psObject) {
        $psObject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
    VSJson([VSYaml] $vsYaml) {
        $vsYaml.GetEnumerator() | ForEach-Object {
            $this[$_.Key] = $_.Value
        }
    }
    VSJson([string] $jsonStringOrFilePath) {
        $psobject = [VSJson]::Transform($jsonStringOrFilePath)
        $psobject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
    VSJson([string[]] $jsonStrings) {
        $newString = $jsonStrings -join [Environment]::NewLine
        $psobject = [VSJson]::Transform($newString)
        $psobject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
}
