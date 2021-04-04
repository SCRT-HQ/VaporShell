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
    static [Specialized.OrderedDictionary] TransformToDict([string] $stringOrFilepath) {
        $dictionary = [ordered]@{}
        if (Test-Path $stringOrFilepath) {
            $stringOrFilepath = [File]::ReadAllText($stringOrFilepath)
        }
        if ($stringOrFilepath.Trim() -match '^%\d\w') {
            Write-Debug "String appears to be URL encoded, decoding with System.Web.HttpUtility::UrlDecode"
            Add-Type -AssemblyName System.Web
            $stringOrFilepath = [System.Web.HttpUtility]::UrlDecode($stringOrFilepath)
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
} #>
