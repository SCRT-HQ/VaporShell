function Convert-ToVSCommand {
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [Object]
        $Object,
        [parameter(Mandatory = $true,Position = 1)]
        [string]
        $InputFunction,
        [parameter(Mandatory = $false,Position = 2)]
        [string]
        $OutputType
    )
    Begin {
        $funcDict = @{
            'Ref'             = 'Add-FnRef'
            'Fn::Base64'      = 'Add-FnBase64'
            'Fn::Cidr'        = 'Add-FnCidr'
            'Fn::FindInMap'   = 'Add-FnFindInMap'
            'Fn::GetAtt'      = 'Add-FnGetAtt'
            'Fn::GetAZs'      = 'Add-FnGetAZs'
            'Fn::ImportValue' = 'Add-FnImportValue'
            'Fn::Join'        = 'Add-FnJoin'
            'Fn::Select'      = 'Add-FnSelect'
            'Fn::Split'       = 'Add-FnSplit'
            'Fn::Sub'         = 'Add-FnSub'
        }
        $typeDict = . (Resolve-Path (Join-Path (Join-Path ($script:VaporshellPath) "bin") "TypeToFunctionDict.ps1")).Path
        $varDict = . (Resolve-Path (Join-Path (Join-Path $script:VaporshellPath "bin") "PseudoParams.ps1")).Path
    }
    Process {
        $final = ""
        if ($Object -is 'System.String' -and $Object -eq "True") {
            $final += '$true'
        }
        elseif ($Object -is 'System.String' -and $Object -eq "False") {
            $final += '$true'
        }
        elseif ($Object -is 'System.String') {
            $final += '"'
            foreach ($pseudo in $varDict.Keys) {
                if ($Object -match $pseudo) {
                    $Object = $Object.Replace("$pseudo","`$$($varDict[$pseudo])")
                }
            }
            $final += $Object
            $final += '"'
        }
        elseif ($Object -is 'System.Management.Automation.PSCustomObject') {
            $final += "("
            if ($typeDict.Keys -contains $Object.PSObject.Properties.Name) {

            }
            elseif ($Object.PSObject.Properties.Name) {}
            $final += ")"
        }
        $final
    }
}