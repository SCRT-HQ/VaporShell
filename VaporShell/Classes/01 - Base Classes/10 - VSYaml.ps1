using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class VSYaml : VSJson {
    static [VSYaml] Transform([string] $yamlStringOrFilePath) {
        $newData = if (Test-Path $yamlStringOrFilePath) {
            $resolvedPath = (Resolve-Path $yamlStringOrFilePath).Path
            [File]::ReadAllText($resolvedPath)
        }
        else {
            $yamlStringOrFilePath
        }
        try {
            $final = if (Get-Command cfn-flip* -ErrorAction SilentlyContinue) {
                $json = $newData | cfn-flip | Out-String
                ConvertFrom-Json -InputObject $json -ErrorAction Stop
            }
            else {
                ConvertFrom-Yaml -Yaml $newData -ErrorAction Stop
            }
        }
        catch {
            throw [VSError]::InvalidYamlInput($yamlStringOrFilePath)
        }
        $dict = [ordered]@{}
        $final.PSObject.Properties | ForEach-Object {
            $dict[$_.Name] = $_.Value
        }
        return [VSYaml]::new($dict)
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
        $this = $this::Transform($yamlStringOrFilePath)
    }
    VSYaml([string[]] $yamlStrings) {
        $newString = $yamlStrings -join [Environment]::NewLine
        $this = $this::Transform($newString)
    }
}
