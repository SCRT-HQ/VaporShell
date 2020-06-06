using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.IO
using namespace System.Management.Automation

class UserData : VSHashtable {

    static [object] Transform([FnJoin] $fnJoin) {
        return $fnJoin
    }

    static [object] Transform([UserData] $userData) {
        return $userData['Fn::Base64']
    }

    static [object] Transform([FnBase64] $fnBase64) {
        return $fnBase64['Fn::Base64']
    }

    static [object] Transform([string] $userDataStringOrFilepath) {
        return [UserData]::Transform($false, $false, @{}, $userDataStringOrFilepath)
    }

    static [object] Transform([string] $userDataStringOrFilepath, [bool] $persist) {
        return [UserData]::Transform($persist, $false, @{}, $userDataStringOrFilepath)
    }

    static [object] Transform([bool] $useJoin, [string] $userDataStringOrFilepath) {
        return [UserData]::Transform($false, $useJoin, @{}, $userDataStringOrFilepath)
    }

    static [object] Transform([bool] $persist, [bool] $useJoin, [IDictionary] $replaceDict, [string] $userDataStringOrFilepath) {
        $newData = if (Test-Path $userDataStringOrFilepath) {
            $values = ""
            $item = Get-Item $userDataStringOrFilepath
            $tag = switch -RegEx ($item.Extension) {
                '^\.ps1$' {
                    "powershell"
                }
                '^\.(bat|cmd)$' {
                    "script"
                }
                default {
                    $null
                }
            }
            $fileContents = [File]::ReadAllText($item.FullName)
            if ($tag -and $fileContents -notlike "<$($tag)>*") {
                if ($fileContents[0] -notlike "<$($tag)>`n*") {
                    $values += "<$($tag)>`n"
                }
            }
            $values += $fileContents
            if ($tag -and $fileContents -notlike "*</$($tag)>*") {
                $values += "`n</$($tag)>"
            }
            if ($persist -and $fileContents -notlike "*<persist>true</persist>*") {
                $values += "`n<persist>true</persist>"
            }
            $values
        }
        else {
            $userDataStringOrFilepath
        }
        $replaceDict.GetEnumerator() | ForEach-Object {
            Write-Verbose "Replacing '$($_.Key)' with '$($_.Value)'"
            $newData = $newData.Replace($_.Key,$_.Value)
        }
        $final = if ($useJoin) {
            [FnJoin]::new([Environment]::NewLine,($newData -split [Environment]::NewLine))
        }
        else {
            $newData
        }
        return $final
    }

    UserData() {}

    UserData([FnJoin] $fnJoin) {
        $this['Fn::Base64'] = $fnJoin
    }
    UserData([FnBase64] $fnBase64) {
        $this['Fn::Base64'] = $fnBase64['Fn::Base64']
    }
    UserData([string] $userDataStringOrFilepath) {
        $this['Fn::Base64'] = [UserData]::Transform($userDataStringOrFilepath)
    }
    UserData([string[]] $userDataStrings) {
        $joined = $userDataStrings -join [Environment]::NewLine
        $this['Fn::Base64'] = [UserData]::Transform($joined)
    }
}
