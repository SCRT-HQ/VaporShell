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
            $inputData.GetType().FullName -match ('^(UserData|Fn(Base64|Join)|Con(Ref|And|Equals|If|Not|Or))$') -or
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
            $final = @()
            $tag = $null
            foreach ($item in $list) {
                if ($item -is [string] -and (Test-Path $item)) {
                    $obj = Get-Item $item
                    $tag = switch -RegEx ($obj.Extension) {
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
                    [File]::ReadAllLines($obj.FullName) | ForEach-Object {
                        $final += $_
                    }
                }
                else {
                    $final += $item
                }
            }
            if ($null -ne $tag -and ($final -join [Environment]::NewLine) -notmatch "<$tag>") {
                $final.Insert(0,"<$($tag)>") | Out-Null
                $final += "</$($tag)>"
            }
            return @{
                'Fn::Base64' = @{
                    'Fn::Join' = @(
                        [Environment]::NewLine,
                        @($final)
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
