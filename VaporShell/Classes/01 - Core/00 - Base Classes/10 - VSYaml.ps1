using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class VSYaml : VSHashtable {
    static [psobject] Transform([string] $yamlStringOrFilePath) {
        $newData = if (Test-Path $yamlStringOrFilePath) {
            $resolvedPath = (Resolve-Path $yamlStringOrFilePath).Path
            [File]::ReadAllText($resolvedPath)
        }
        else {
            $yamlStringOrFilePath
        }
        try {
            $final = if (Get-Command cfn-flip* -ErrorAction SilentlyContinue) {
                $json = $newData | cfn-flip
                ConvertFrom-Json -InputObject $json -ErrorAction Stop
            }
            else {
                ConvertFrom-Yaml -Yaml $newData -ErrorAction Stop
            }
        }
        catch {
            $errorRecord = [ErrorRecord]::new(
                [ArgumentException]::new("Unable to convert input data from YAML to PSObject! Please use a YAML string OR provide a valid path to a YAML file!"),
                'InvalidYamlInput',
                [ErrorCategory]::InvalidArgument,
                $yamlStringOrFilePath
            )
            throw $errorRecord
        }
        return $final
    }

    VSYaml() : base() {}
    VSYaml([IDictionary] $dictionary) {
        $dictionary.GetEnumerator() | ForEach-Object {
            $this[$_.Key] = $_.Value
        }
    }
    VSYaml([psobject] $psObject) {
        $psObject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
    VSYaml([string] $yamlStringOrFilePath) {
        $psobject = [VSYaml]::Transform($yamlStringOrFilePath)
        $psobject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
    VSYaml([string[]] $yamlStrings) {
        $newString = $yamlStrings -join [Environment]::NewLine
        $psobject = [VSYaml]::Transform($newString)
        $psobject.PSObject.Properties | ForEach-Object {
            $this[$_.Name] = $_.Value
        }
    }
}
