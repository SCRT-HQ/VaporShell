using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

<# class VSJson : VSHashtable {
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

<#  #>
class VSJson : VSHashtable {
    static [VSJson] Transform([string] $stringOrFilepath) {
        $decoded = if ($stringOrFilepath.Trim() -match '^%\d\w') {
            Write-Debug "String appears to be URL encoded, decoding with System.Web.HttpUtility::UrlDecode"
            Add-Type -AssemblyName System.Web
            [System.Web.HttpUtility]::UrlDecode($stringOrFilepath)
        }
        else {
            $stringOrFilepath
        }
        $newData = if (Test-Path $decoded) {
            $resolvedPath = (Resolve-Path $decoded).Path
            [File]::ReadAllText($resolvedPath)
        }
        else {
            $decoded
        }
        Write-Debug "New data: $newData"
        try {
            $final = (ConvertFrom-Json -InputObject $newData -ErrorAction Stop)
        }
        catch {
            throw [VSError]::InvalidJsonInput($decoded)
        }
        $dict = [ordered]@{}
        $final.PSObject.Properties | ForEach-Object {
            $dict[$_.Name] = $_.Value
        }
        Write-Debug "Resulting dict as parsed JSON: $($dict | ConvertTo-Json -Depth 20)"
        return [VSJson]$dict
    }

    static [VSJson] Transform([VSJson] $vsJson) {
        return $vsJson
    }

    VSJson() : base() {}
    VSJson([IDictionary] $dictionary) {
        if ($dictionary -is [VSJson]) {
            $this = $dictionary
        }
        else {
            $this = [ordered]@{}
            $dictionary.GetEnumerator() | ForEach-Object {
                Write-Debug "Adding key '$($_.Key)' with value '$($_.Value)' to $this"
                $this[$_.Key] = $_.Value
            }
        }
    }
    VSJson([psobject] $psObject) {
        $this = [ordered]@{}
        $psObject.PSObject.Properties | ForEach-Object {
            Write-Debug "Adding property '$($_.Name)' with value '$($_.Value)' to $this"
            $this[$_.Name] = $_.Value
        }
    }
    VSJson([string] $stringOrFilepath) {
        $this = $this::Transform($stringOrFilepath)
    }
    VSJson([string[]] $strings) {
        $newString = $strings -join [Environment]::NewLine
        $this = $this::Transform($newString)
    }
} #>
