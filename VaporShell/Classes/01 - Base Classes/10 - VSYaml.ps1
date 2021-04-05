using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation
using namespace System.Web

class VSYaml : VSJson {
    static [Specialized.OrderedDictionary] TransformToDict([string] $stringOrFilepath) {
        $dictionary = [ordered]@{}
        if (Test-Path $stringOrFilepath) {
            $stringOrFilepath = [File]::ReadAllText($stringOrFilepath)
        }
        if ($stringOrFilepath.Trim() -match '^%\d\w') {
            Write-Debug "String appears to be URL encoded, decoding with System.Web.HttpUtility::UrlDecode"
            $stringOrFilepath = [HttpUtility]::UrlDecode($stringOrFilepath)
        }
        try {
            $final = if (Get-Command cfn-flip* -ErrorAction SilentlyContinue) {
                $json = $stringOrFilepath | cfn-flip | Out-String
                ConvertFrom-Json -InputObject $json -ErrorAction Stop
            }
            else {
                ConvertFrom-Yaml -Yaml $stringOrFilepath -ErrorAction Stop
            }
        }
        catch {
            throw [VSError]::InvalidYamlInput($stringOrFilepath)
        }
        $final.PSObject.Properties | ForEach-Object {
            Write-Debug "Adding key '$($_.Name)' with value '$($_.Value)' to VSYaml"
            $dictionary[$_.Name] = $_.Value
        }
        Write-Debug "Resulting dict: $($dictionary | ConvertTo-Json -Depth 10))"
        return $dictionary
    }

    static [VSYaml] Transform([string] $stringOrFilepath) {
        $vsYaml = [VSYaml]::new()
        $dictionary = [VSYaml]::TransformToDict($stringOrFilepath)
        $dictionary.GetEnumerator() | ForEach-Object {
            $vsYaml[$_.Key] = $_.Value
        }
        return $vsYaml
    }

    static [VSYaml] Transform([VSYaml] $vsYaml) {
        return $vsYaml
    }

    VSYaml() : base() {}
    VSYaml([IDictionary] $dictionary) : base($dictionary) {}
    VSYaml([psobject] $psObject) : base($psObject) {}
    VSYaml([string] $stringOrFilepath) : base($stringOrFilepath) {}
    VSYaml([string[]] $strings) : base($strings) {}
} #>
