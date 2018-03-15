function Convert-ToVSCommand {
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [Object[]]
        $InputObject
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
        $parenth = 0
        $final = ""
        foreach ($object in $InputObject) {
            if ($object -is 'System.String') {
                $final += '"'
                foreach ($pseudo in $varDict.Keys) {
                    if ($object -match $pseudo) {
                        $object = $object.Replace("$pseudo","`$$($varDict[$pseudo])")
                    }
                }
                $final += $object
                $final += '"'
            }
            elseif ($object -is 'System.Management.Automation.PSCustomObject') {
                $
            }
        }
        $final
    }
}