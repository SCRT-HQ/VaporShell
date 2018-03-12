function Update-VSResourceFunctions {
    <#
    .SYNOPSIS
        Updates the Resource and Property Type functions
    
    .DESCRIPTION
        Updates the Resource and Property Type functions
    
    .PARAMETER Region
        The AWS region by location whose specification sheet you'd like to use to update your functions

    .FUNCTIONALITY
        Vaporshell
    #>
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateSet("Mumbai","Seoul","Sydney","Singapore","Tokyo","CanadaCentral","Frankfurt","London","Ireland","`SaoPaulo","NVirginia","Ohio","NCalifornia","Oregon")]
        [String]
        $Region = "NVirginia"
    )
    $typeDictPath = Join-Path (Join-Path $script:VaporshellPath "bin") "TypeToFunctionDict.ps1"
    $typeDict = @('@{')
    $BeforeTypeCount = (Get-ChildItem -Path (Resolve-Path "$script:VaporshellPath\Public\Resource Types").Path).Count
    $BeforePropCount = (Get-ChildItem -Path (Resolve-Path "$script:VaporshellPath\Public\Resource Property Types").Path).Count
    $regHash = @{
        Mumbai        = "https://d2senuesg1djtx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Seoul         = "https://d1ane3fvebulky.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Sydney        = "https://d2stg8d246z9di.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Singapore     = "https://doigdx0kgq9el.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Tokyo         = "https://d33vqc0rt9ld30.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        CanadaCentral = "https://d2s8ygphhesbe7.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Frankfurt     = "https://d1mta8qj7i28i2.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        London        = "https://d1742qcu2c1ncx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Ireland       = "https://d3teyb21fexa9r.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        SaoPaulo      = "https://d3c9jyj3w509b0.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        NVirginia     = "https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Ohio          = "https://dnwj8swjjbsbt.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        NCalifornia   = "https://d68hl49wbnanq.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
        Oregon        = "https://d201a2mn26r7lk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json"
    }

    $URL = $regHash[$Region]
    $specs = (Invoke-WebRequest $URL).Content | ConvertFrom-Json

    foreach ($resource in $specs.PropertyTypes.psobject.Properties) {
        $Name = $resource.Name
        $ShortName = $Name.Replace("AWS::","")
        $FunctionName = "Add-VS" + $ShortName.Replace("::","").Replace(".","")
        $typeDict += "`t'$Name' = '$FunctionName'"
        Write-Verbose "Updating $FunctionName [$Name]"
        Convert-SpecToFunction -Resource $resource -ResourceType Property
    }

    foreach ($resource in $specs.ResourceTypes.psobject.Properties) {
        $Name = $resource.Name
        $ShortName = $Name.Replace("AWS::","")
        $FunctionName = "New-VS" + ($ShortName -replace "\..*").Replace("::","")
        $typeDict += "`t'$Name' = '$FunctionName'"
        Write-Verbose "Updating $FunctionName [$Name]"
        Convert-SpecToFunction -Resource $resource -ResourceType Resource
    }
    $typeDict += '}'
    Write-Verbose "Saving Type Dictionary"
    Set-Content -Value $typeDict -Path $typeDictPath -Encoding UTF8 -Force
    $AfterTypeCount = (Get-ChildItem -Path (Resolve-Path "$script:VaporshellPath\Public\Resource Types").Path).Count
    $AfterPropCount = (Get-ChildItem -Path (Resolve-Path "$script:VaporshellPath\Public\Resource Property Types").Path).Count
    $newType = $AfterTypeCount - $BeforeTypeCount
    $newProp = $AfterPropCount - $BeforePropCount
    Write-Verbose "`n`n$newType new Resource Type and $newProp Resource Property Type functions added to Vaporshell [$($newType + $newProp) total]`n"
}