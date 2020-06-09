using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class VSJson : VSHashtable {
    static [VSJson] Transform([string] $jsonStringOrFilePath) {
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
            throw [VSError]::InvalidJsonInput($jsonStringOrFilePath)
        }
        $dict = [ordered]@{}
        $final.PSObject.Properties | ForEach-Object {
            $dict[$_.Name] = $_.Value
        }
        return [VSJson]::new($dict)
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
    VSJson([string] $jsonStringOrFilePath) {
        $this = $this::Transform($jsonStringOrFilePath)
    }
    VSJson([string[]] $jsonStrings) {
        $newString = $jsonStrings -join [Environment]::NewLine
        $this = $this::Transform($newString)
    }
}
