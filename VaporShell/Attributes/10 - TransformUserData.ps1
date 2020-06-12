using namespace System
using namespace System.IO
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class TransformUserData : ArgumentTransformationAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    hidden [object] TransformData([object] $inputData) {
        Write-Debug "Transforming UserData"
        if (
            $inputData.GetType().FullName -in @('UserData','FnBase64','FnJoin') -or
            $inputData.GetType() -in @([IDictionary],[psobject])
        ) {
            return $inputData
        }
        else {
            $list = if ($inputData -is [array]) {
                $inputData
            }
            else {
                @($inputData)
            }
            $result = foreach ($item in $list) {
                if ($item -is [string] -and (Test-Path $item)) {
                    $values = ""
                    $item = Get-Item $item
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
                    $values
                }
                else {
                    $item
                }
            }
            return @{
                'Fn::Base64' = @{
                    'Fn::Join' = @(
                        [Environment]::NewLine,
                        @($result)
                    )
                }
            }
        }
    }

    [object] Transform([EngineIntrinsics] $engineIntrinsics, [object] $inputData) {
        $this.engineIntrinsics = $engineIntrinsics
        return $this.TransformData($inputData)
    }
}
