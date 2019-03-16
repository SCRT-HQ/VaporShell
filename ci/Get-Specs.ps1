function Get-Specs {
    [CmdletBinding(PositionalBinding = $false)]
    Param (
        [parameter(Mandatory = $false)]
        [ValidateSet("Mumbai","Seoul","Sydney","Singapore","Tokyo","CanadaCentral","Frankfurt","London","Ireland","SaoPaulo","NVirginia","Ohio","NCalifornia","Oregon")]
        [String]
        $Region = "NVirginia"
    )
    DynamicParam {
        $ParamAttrib = New-Object System.Management.Automation.ParameterAttribute
        $ParamAttrib.Mandatory = $false
        $ParamAttrib.Position = 0
        $ParamAttrib.ParameterSetName = '__AllParameterSets'
        $AttribColl = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        $AttribColl.Add($ParamAttrib)
        $list = (Invoke-RestMethod "https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json").ResourceTypes.PSObject.Properties.Name | ForEach-Object {($_ -split "::")[0..1] -join "."} | Sort-Object -Unique
        $AttribColl.Add((New-Object  System.Management.Automation.ValidateSetAttribute($list)))
        $RuntimeParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Service', [string], $AttribColl)
        $RuntimeParamDic = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        $RuntimeParamDic.Add('Service',$RuntimeParam)
        return $RuntimeParamDic
    }
    Begin {
        $regHash = @{
            CanadaCentral = "https://d2s8ygphhesbe7.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Frankfurt     = "https://d1mta8qj7i28i2.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Ireland       = "https://d3teyb21fexa9r.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            London        = "https://d1742qcu2c1ncx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Mumbai        = "https://d2senuesg1djtx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            NCalifornia   = "https://d68hl49wbnanq.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            NVirginia     = "https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Ohio          = "https://dnwj8swjjbsbt.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Oregon        = "https://d201a2mn26r7lk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            SaoPaulo      = "https://d3c9jyj3w509b0.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Seoul         = "https://d1ane3fvebulky.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Singapore     = "https://doigdx0kgq9el.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Sydney        = "https://d2stg8d246z9di.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
            Tokyo         = "https://d33vqc0rt9ld30.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        }
        [Uri]$Url = $regHash[$Region]
        $sp = Invoke-RestMethod $Url
    }
    Process {
        [PSCustomObject]@{
            ResourceSpecificationVersion = $sp.ResourceSpecificationVersion
            ResourceTypes                = $(
                foreach ($t in ($sp.ResourceTypes.PSObject.Properties.Name | Where-Object {$_ -like "$($PSBoundParameters['Service'] -replace "\.","::")*"} | Sort-Object)) {
                    $sp.ResourceTypes | Select-Object -ExpandProperty $t | Select-Object @{N = "ResourceType";E = {$t}},@{N = "Namespace";E = {($t -split "::")[0..1] -join "."}},*
                }
            )
            PropertyTypes                = $(
                foreach ($t in ($sp.PropertyTypes.PSObject.Properties.Name | Where-Object {$_ -like "$($PSBoundParameters['Service'] -replace "\.","::")*"} | Sort-Object)) {
                    $sp.PropertyTypes | Select-Object -ExpandProperty $t | Select-Object @{N = "PropertyType";E = {$t}},@{N = "Namespace";E = {($t -split "::")[0..1] -join "."}},*
                }
            )
        }
    }
}
