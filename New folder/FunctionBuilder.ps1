function Update-VSResources {
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateSet("Mumbai","Seoul","Sydney","Singapore","Tokyo","CanadaCentral","Frankfurt","London","Ireland","`SaoPaulo","NVirginia","Ohio","NCalifornia","Oregon")]
        [String]
        $Region = "NVirginia"
    )

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
    $specs = (New-Object System.Net.WebClient).DownloadString($URL) | ConvertFrom-Json

    foreach ($resource in $specs.PropertyTypes.psobject.Properties) {
        Write-Verbose "Updating $($resource.Name)"
        Convert-SpecToFunction -Resource $resource -ResourceType Property
    }

    foreach ($resource in $specs.ResourceTypes.psobject.Properties) {
        Write-Verbose "Updating $($resource.Name)"
        Convert-SpecToFunction -Resource $resource -ResourceType Resource
    }
}