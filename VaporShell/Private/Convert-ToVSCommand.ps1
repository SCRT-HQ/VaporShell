function Convert-ToVSCommand {
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [Object[]]
        $InputObject
    )
    Begin {
        $funcHash = @{
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
        $typeDictPath = Join-Path (Resolve-Path "$script:VaporshellPath\bin") "TypeToFunctionDict.ps1"
        $typeDict = . $typeDictPath
        $varDict = . (Join-Path (Join-Path $script:VaporshellPath "Private") "PseudoParams.ps1")
    }
    Process {
        foreach ($object in $InputObject) {

        }
    }
}