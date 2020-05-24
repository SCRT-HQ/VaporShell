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
    Param(
        [parameter(Position = 0,Mandatory)]
        [string]
        $ModuleVersion
    )
    $regHash = [ordered]@{
        'AWS SAM (goformation spec)'    = 'https://raw.githubusercontent.com/awslabs/goformation/master/generate/sam-2016-10-31.json'
        'us-east-1 (N. Virginia)'       = 'https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-east-1 (Hong Kong)'         = 'https://cfn-resource-specifications-ap-east-1-prod.s3.ap-east-1.amazonaws.com/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-south-1 (Mumbai)'           = 'https://d2senuesg1djtx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-3 (Osaka-Local)'  = 'https://d2zq80gdmjim8k.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-2 (Seoul)'        = 'https://d1ane3fvebulky.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-southeast-1 (Singapore)'    = 'https://doigdx0kgq9el.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-southeast-2 (Sydney)'       = 'https://d2stg8d246z9di.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ap-northeast-1 (Tokyo)'        = 'https://d33vqc0rt9ld30.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'ca-central-1 (Canada-Central)' = 'https://d2s8ygphhesbe7.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'cn-north-1 (Beijing)'          = 'https://cfn-resource-specifications-cn-north-1-prod.s3.cn-north-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
        'cn-northwest-1 (Ningxia)'      = 'https://cfn-resource-specifications-cn-northwest-1-prod.s3.cn-northwest-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-central-1 (Frankfurt)'      = 'https://d1mta8qj7i28i2.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-1 (Ireland)'           = 'https://d3teyb21fexa9r.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-2 (London)'            = 'https://d1742qcu2c1ncx.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-west-3 (Paris)'             = 'https://d2d0mfegowb3wk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'eu-north-1 (Stockholm)'        = 'https://diy8iv58sj6ba.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-gov-east-1 (GovCloud East)' = 'https://s3.us-gov-east-1.amazonaws.com/cfn-resource-specifications-us-gov-east-1-prod/latest/CloudFormationResourceSpecification.json'
        'us-gov-west-1 (GovCloud West)' = 'https://s3.us-gov-west-1.amazonaws.com/cfn-resource-specifications-us-gov-west-1-prod/latest/CloudFormationResourceSpecification.json'
        'me-south-1 (Bahrain)'          = 'https://cfn-resource-specifications-me-south-1-prod.s3.me-south-1.amazonaws.com/latest/gzip/CloudFormationResourceSpecification.json'
        'sa-east-1 (São Paulo)'         = 'https://d3c9jyj3w509b0.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-east-2 (Ohio)'              = 'https://dnwj8swjjbsbt.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-west-1 (N. California)'     = 'https://d68hl49wbnanq.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
        'us-west-2 (Oregon)'            = 'https://d201a2mn26r7lk.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
    }

    # Get us-east-1 as the base
    $final = @{
        ResourceTypes = @{}
        PropertyTypes = @{}
    }
    $serviceModules = @('SAM')
    Write-BuildLog "Getting CloudFormation spec from: us-east-1 (N. Virginia)"
    $URL = 'https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
    $specs = Invoke-RestMethod $URL -Verbose:$false
    foreach ($resource in $specs.ResourceTypes.PSObject.Properties) {
        $serviceModules += $resource.Name.Replace('AWS::','').Split('::') | Select-Object -First 1
        $final['ResourceTypes'][$resource.Name] = $resource
    }
    foreach ($resource in $specs.PropertyTypes.PSObject.Properties) {
        $serviceModules += $resource.Name.Replace('AWS::','').Split('::') | Select-Object -First 1
        $final['PropertyTypes'][$resource.Name] = $resource
    }
    # Get the rest and add anything missing from us-east-1 for full coverage
    foreach ($region in $regHash.GetEnumerator() | Where-Object { $_.Key -ne 'us-east-1 (N. Virginia)' }) {
        try {
            Write-BuildLog "Getting CloudFormation spec from: $($region.Key)"
            $specs = Invoke-RestMethod $region.Value -Verbose:$false
            if ($newResources = $specs.ResourceTypes.PSObject.Properties | Where-Object { $_.Name -notin $final['ResourceTypes'].Keys }) {
                Write-Host -ForegroundColor Green "Found $($newResources.Count) new resource types in spec: $($region.Key)`n- $($newResources.Name -join "`n- ")"
                foreach ($resource in $newResources) {
                    $serviceModules += $resource.Name.Replace('AWS::','').Split('::') | Select-Object -First 1
                    $final['ResourceTypes'][$resource.Name] = $resource
                }
            }
            if ($newProps = $specs.PropertyTypes.PSObject.Properties | Where-Object { $_.Name -notin $final['PropertyTypes'].Keys }) {
                Write-Host -ForegroundColor Magenta "Found $($newProps.Count) new property types in spec: $($region.Key)`n- $($newProps.Name -join "`n- ")"
                foreach ($resource in $newProps) {
                    $serviceModules += $resource.Name.Replace('AWS::','').Split('::') | Select-Object -First 1
                    $final['PropertyTypes'][$resource.Name] = $resource
                }
            }
        }
        catch {
            Write-Host -ForegroundColor Yellow "WARNING: Failed to get specs from region: $($_.Key)"
        }
    }
    foreach ($serviceModule in ($serviceModules | Where-Object {$_ -ne 'Serverless'} | Sort-Object -Unique)) {
        New-VSServiceModule -ModuleName "VaporShell.$serviceModule" -ModuleVersion $ModuleVersion
    }
    foreach ($resource in $final['ResourceTypes'].Values | Sort-Object Name) {
        Write-Verbose "Updating Resource Type [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Resource
    }
    foreach ($resource in $final['PropertyTypes'].Values | Sort-Object Name) {
        Write-Verbose "Updating Resource Property [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Property
    }
}
