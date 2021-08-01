using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation
using namespace System.Net

class VSJson : VSHashtable {
    static [string] Decode([string] $stringOrFilepath) {
        return [WebUtility]::UrlDecode($stringOrFilepath)
    }

    static [Specialized.OrderedDictionary] TransformToDict([string] $stringOrFilepath) {
        $dictionary = [ordered]@{}
        if (Test-Path $stringOrFilepath) {
            $stringOrFilepath = [File]::ReadAllText($stringOrFilepath)
        }
        if ($stringOrFilepath.Trim() -match '^%\d\w') {
            Write-Debug "String appears to be URL encoded, decoding"
            $stringOrFilepath = [VSJson]::Decode($stringOrFilepath)
        }
        try {
            $jsonConvert = @{
                InputObject = $stringOrFilepath
                ErrorAction = 'Stop'
            }
            if ($Global:PSVersionTable.PSVersion.Major -ge 7) {
                $jsonConvert['Depth'] = 20
            }
            $final = ConvertFrom-Json @jsonConvert
            $final.PSObject.Properties | ForEach-Object {
                Write-Debug "Adding key '$($_.Name)' with value '$($_.Value)' to VSJson"
                $dictionary[$_.Name] = $_.Value
            }
        }
        catch {
            throw [VSError]::InvalidJsonInput($stringOrFilepath)
        }
        Write-Debug "Resulting dict: $($dictionary | ConvertTo-Json -Depth 10))"
        return $dictionary
    }

    static [VSJson] Transform([string] $stringOrFilepath) {
        $vsJson = [VSJson]::new()
        $stringOrFilepath = [VSJson]::Decode($stringOrFilepath)
        $dictionary = [VSJson]::TransformToDict($stringOrFilepath)
        $dictionary.GetEnumerator() | ForEach-Object {
            $vsJson[$_.Key] = $_.Value
        }
        return $vsJson
    }

    static [VSJson] Transform([VSJson] $vsJson) {
        return $vsJson
    }

    VSJson() : base() {}
    VSJson([IDictionary] $dictionary) {
        $dictionary.GetEnumerator() | ForEach-Object {
            Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
            $this[$_.Key] = $_.Value
        }
    }
    VSJson([psobject] $psObject) {
        $psObject.PSObject.Properties | ForEach-Object {
            Write-Debug "Adding property '$($_.Name)' with value '$($_.Value)' to $this"
            $this[$_.Name] = $_.Value
        }
    }
    VSJson([string] $stringOrFilepath) {
        $stringOrFilepath = [VSJson]::Decode($stringOrFilepath)
        $dictionary = [VSJson]::TransformToDict($stringOrFilepath)
        $dictionary.GetEnumerator() | ForEach-Object {
            Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
            $this[$_.Key] = $_.Value
        }
    }
    VSJson([string[]] $strings) {
        $newString = $strings -join [Environment]::NewLine
        $stringOrFilepath = [VSJson]::Decode($newString)
        $dictionary = [VSJson]::TransformToDict($stringOrFilepath)
        $dictionary.GetEnumerator() | ForEach-Object {
            Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
            $this[$_.Key] = $_.Value
        }
    }
}
