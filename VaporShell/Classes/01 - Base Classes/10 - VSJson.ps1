using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation
using namespace System.Net

class VSJson : VSHashtable {
    static [Specialized.OrderedDictionary] TransformToDict([string] $stringOrFilepath) {
        $dictionary = [ordered]@{}
        if (Test-Path $stringOrFilepath) {
            $stringOrFilepath = [File]::ReadAllText($stringOrFilepath)
        }
        if ($stringOrFilepath.Trim() -match '^%\d\w') {
            Write-Debug "String appears to be URL encoded, decoding with System.Net.WebUtility::UrlDecode"
            $stringOrFilepath = [WebUtility]::UrlDecode($stringOrFilepath)
        }
        try {
            $final = (ConvertFrom-Json -InputObject $stringOrFilepath -ErrorAction Stop)
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
        $dictionary = [VSJson]::TransformToDict($stringOrFilepath)
        $dictionary.GetEnumerator() | ForEach-Object {
            Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
            $this[$_.Key] = $_.Value
        }
    }
    VSJson([string[]] $strings) {
        $newString = $strings -join [Environment]::NewLine
        $dictionary = [VSJson]::TransformToDict($newString)
        $dictionary.GetEnumerator() | ForEach-Object {
            Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
            $this[$_.Key] = $_.Value
        }
    }
}
