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
    [CmdletBinding()]
    Param()
    $vsPath = (Resolve-Path "$PSScriptRoot\..\VaporShell").Path
    $vsTypeFuncPath = (Resolve-Path "$vsPath\Public\Resource Types").Path
    $vsPropFuncPath = (Resolve-Path "$vsPath\Public\Resource Property Types").Path
    $vsSdkFunctions = (Get-ChildItem (Resolve-Path "$vsPath\Public\SDK Wrappers").Path -Recurse -Filter '*.ps1').BaseName
    $current = Find-Module VaporShell -Repository PSGallery -AllowPrerelease
    $BeforeTypeCount = ($current.Includes.Command | Where-Object {$_ -match '^New\-VS' -and $_ -notin $vsSdkFunctions}).Count
    $BeforePropCount = ($current.Includes.Command | Where-Object {$_ -match '^Add\-VS' -and $_ -notin $vsSdkFunctions}).Count
    $regHash = @{
        'us-east-1 (N. Virginia)'     = 'https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-east-1 (Hong Kong)' = 'https://cfn-resource-specifications-ap-east-1-prod.s3.ap-east-1.amazonaws.com/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-south-1 (Mumbai)'   = 'https://d2senuesg1djtx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-3 (Osaka-Local)' = 'https://d2zq80gdmjim8k.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-2 (Seoul)'    = 'https://d1ane3fvebulky.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-southeast-1 (Singapore)' = 'https://doigdx0kgq9el.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-southeast-2 (Sydney)' = 'https://d2stg8d246z9di.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-1 (Tokyo)' = 'https://d33vqc0rt9ld30.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ca-central-1 (Canada-Central)' = 'https://d2s8ygphhesbe7.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'cn-north-1 (Beijing)' = 'https://cfn-resource-specifications-cn-north-1-prod.s3.cn-north-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
        'cn-northwest-1 (Ningxia)' = 'https://cfn-resource-specifications-cn-northwest-1-prod.s3.cn-northwest-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-central-1 (Frankfurt)' = 'https://d1mta8qj7i28i2.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-1 (Ireland)' = 'https://d3teyb21fexa9r.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-2 (London)' = 'https://d1742qcu2c1ncx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-3 (Paris)' = 'https://d2d0mfegowb3wk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-north-1 (Stockholm)' = 'https://diy8iv58sj6ba.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-gov-east-1 (GovCloud East)' = 'https://s3.us-gov-east-1.amazonaws.com/cfn-resource-specifications-us-gov-east-1-prod/latest/CloudFormationResourceSpecification.json'
        'us-gov-west-1 (GovCloud West)' = 'https://s3.us-gov-west-1.amazonaws.com/cfn-resource-specifications-us-gov-west-1-prod/latest/CloudFormationResourceSpecification.json'
        'me-south-1 (Bahrain)' = 'https://cfn-resource-specifications-me-south-1-prod.s3.me-south-1.amazonaws.com/latest/gzip/CloudFormationResourceSpecification.json'
        'sa-east-1 (São Paulo)' = 'https://d3c9jyj3w509b0.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-east-2 (Ohio)' = 'https://dnwj8swjjbsbt.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-west-1 (N. California)' = 'https://d68hl49wbnanq.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-west-2 (Oregon)' = 'https://d201a2mn26r7lk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
    }

    # Get us-east-1 as the base
    $final = @{
        ResourceTypes = @{}
        PropertyTypes = @{}
    }
    Write-Verbose "Getting CloudFormation spec from region: us-east-1 (N. Virginia)"
    $URL = 'https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
    $specs = Invoke-RestMethod $URL -Verbose:$false
    foreach ($resource in $specs.ResourceTypes.PSObject.Properties) {
        $final['ResourceTypes'][$resource.Name] = $resource
    }
    foreach ($resource in $specs.PropertyTypes.PSObject.Properties) {
        $final['PropertyTypes'][$resource.Name] = $resource
    }
    # Get the rest and add anything missing from us-east-1 for full coverage
    foreach ($region in $regHash.GetEnumerator() | Where-Object {$_.Key -ne 'us-east-1 (N. Virginia)'}) {
        try {
            Write-Verbose "Getting CloudFormation spec from region: $($region.Key)"
            $specs = Invoke-RestMethod $region.Value -Verbose:$false
            if ($newResources = $specs.ResourceTypes.PSObject.Properties | Where-Object {$_.Name -notin $final['ResourceTypes'].Keys}) {
                Write-Host -ForegroundColor Green "Found $($newResources.Count) new resource types in region: $($region.Key)`n- $($newResources.Name -join "`n- ")"
                foreach ($resource in $newResources) {
                    $final['ResourceTypes'][$resource.Name] = $resource
                }
            }
            if ($newProps = $specs.PropertyTypes.PSObject.Properties | Where-Object {$_.Name -notin $final['PropertyTypes'].Keys}) {
                Write-Host -ForegroundColor Magenta "Found $($newProps.Count) new property types in region: $($region.Key)`n- $($newProps.Name -join "`n- ")"
                foreach ($resource in $newProps) {
                    $final['PropertyTypes'][$resource.Name] = $resource
                }
            }
        }
        catch {
            Write-Host -ForegroundColor Yellow "WARNING: Failed to get specs from region: $($_.Key)"
        }
    }
    foreach ($resource in $final['ResourceTypes'].Values | Sort-Object Name) {
        Write-Verbose "Updating Resource Type [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Resource
    }
    foreach ($resource in $final['PropertyTypes'].Values | Sort-Object Name) {
        Write-Verbose "Updating Resource Property [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Property
    }
    $AfterTypeCount = (Get-ChildItem -Path (Resolve-Path "$vsPath\Public\Resource Types").Path -Recurse).Count
    $AfterPropCount = (Get-ChildItem -Path (Resolve-Path "$vsPath\Public\Resource Property Types").Path -Recurse).Count
    $newType = $AfterTypeCount - $BeforeTypeCount
    $newProp = $AfterPropCount - $BeforePropCount
    Write-Verbose "`n`n$newType new Resource Type and $newProp Resource Property Type functions added to Vaporshell [$($newType + $newProp) total]`n"
    Write-Host "Resource function update stats:"
    [PSCustomObject][Ordered]@{
        'Resource Type Functions [Before]' = $BeforeTypeCount
        'Resource Type Functions [After]' = $AfterTypeCount
        'Resource Type Functions [Diff]' = $newType
        'Resource Prop Functions [Before]' = $BeforePropCount
        'Resource Prop Functions [After]' = $AfterPropCount
        'Resource Prop Functions [Diff]' = $newProp
    }
}
