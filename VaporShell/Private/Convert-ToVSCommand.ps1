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
        $typeDict = . (Resolve-Path (Join-Path (Join-Path $script:VaporshellPath "bin") "TypeToFunctionDict.ps1"))
        $varDict = . (Resolve-Path (Join-Path (Join-Path $script:VaporshellPath "bin") "PseudoParams.ps1"))
    }
    Process {
        foreach ($object in $InputObject) {

        }
    }
} 