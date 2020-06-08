function Get-CFNResourceDictionary {
    [OutputType([psobject[]])]
    [CmdletBinding()]
    Param()
    Begin {
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
            <# Skipping China regions due to transient network issues hanging builds
            'cn-north-1 (Beijing)'          = 'https://cfn-resource-specifications-cn-north-1-prod.s3.cn-north-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
            'cn-northwest-1 (Ningxia)'      = 'https://cfn-resource-specifications-cn-northwest-1-prod.s3.cn-northwest-1.amazonaws.com.cn/latest/gzip/CloudFormationResourceSpecification.json'
            #>
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
        $final = @()
        $noDepsTypes = @('Boolean', 'Double', 'Integer', 'Json', 'Long', 'String', 'Timestamp')
        $dictJsonPath = [System.IO.Path]::Combine($PSScriptRoot,'CFNResourceDictionary.json')
    }
    Process {
        # This function will cache a JSON version of the parsed specs. If that file was written to within the
        # last 3 days, just use it instead of pulling down each spec to process.
        # The CFNResourceDictionary.json file is excluded via the .gitignore
        if ((Test-Path $dictJsonPath) -and (Get-Item $dictJsonPath).LastWriteTime -gt (Get-Date).AddDays(-3)) {
            Write-BuildLog "Getting CloudFormation spec from recent local dict: $dictJsonPath"
            $final = ConvertFrom-Json ([System.IO.File]::ReadAllText($dictJsonPath))
        }
        else {
            Write-BuildLog "Getting CloudFormation spec from: us-east-1 (N. Virginia)"
            $URL = 'https://d1uauaxba7bl26.cloudfront.net/latest/gzip/CloudFormationResourceSpecification.json'
            $specs = Invoke-RestMethod $URL -Verbose:$false
            foreach ($resource in $specs.ResourceTypes.PSObject.Properties) {
                $ShortName = $resource.Name.Replace("AWS::", "")
                $ServiceName = $ShortName.Split('::')[0]
                if ($ServiceName -eq 'Serverless') {
                    $ServiceName = 'SAM'
                    $ShortName = $ShortName -replace '^Serverless', 'SAM'
                }
                $ClassName = $ShortName -replace '\W'
                $final += [pscustomobject]@{
                    Name          = $resource.Name
                    ResourceType  = 'Resource'
                    ServiceName   = $ServiceName
                    ClassName     = $ClassName
                    FunctionName  = "New-VS$ClassName"
                    Properties    = $resource.Value.Properties
                    Documentation = $resource.Value.Documentation
                    Attributes    = $resource.Value.Attributes
                    Value         = $resource.Value
                    Resource      = $resource
                }
            }
            foreach ($resource in $specs.PropertyTypes.PSObject.Properties) {
                $ShortName = $resource.Name.Replace("AWS::", "")
                $ServiceName = $ShortName.Split('::')[0]
                if ($ServiceName -eq 'Serverless') {
                    $ServiceName = 'SAM'
                    $ShortName = $ShortName -replace '^Serverless', 'SAM'
                }
                $ClassName = $ShortName -replace '\W'
                $propTypes = if ($resource.Value.Properties) {
                    $resource.Value.Properties.PSObject.Properties
                    foreach ($prop in $resource.Value.Properties.PSObject.Properties) {
                        $propType = if ($prop.Value.ItemType) {
                            if ($prop.Value.ItemType -eq 'Tag' -and $prop.Value.Type -eq 'List') {
                                'VSResourceTag'
                            }
                            else {
                                $ShortName -replace '\..*', $prop.Value.ItemType -replace '\W'
                            }
                        }
                        elseif ($prop.Value.Type) {
                            if ($prop.Value.ItemType -eq 'Tag' -and $prop.Value.Type -eq 'List') {
                                'VSResourceTag'
                            }
                            elseif ($prop.Value.Type -in $noDepsTypes) {
                                $prop.Value.Type
                            }
                            else {
                                $ShortName -replace '\..*', $prop.Value.Type -replace '\W'
                            }
                        }
                        elseif ($prop.Value.PrimitiveType) {
                            $prop.Value.PrimitiveType
                        }
                        elseif ($prop.Value.PrimitiveItemType) {
                            $prop.Value.PrimitiveItemType
                        }
                        switch -Regex ($propType) {
                            '^Boolean$' {
                                $propType = 'bool'
                            }
                            '^Double$' {
                                $propType = 'double'
                            }
                            '^(Integer|Number)$' {
                                $propType = 'int'
                            }
                            '^Long$' {
                                $propType = 'long'
                            }
                            '^Json$' {
                                $propType = 'VSJson'
                            }
                            '^Timestamp$' {
                                $propType = 'VSTimestamp'
                            }
                            '^String$' {
                                $propType = 'string'
                            }
                        }
                        [pscustomobject]@{
                            PropertyName   = $prop.Name
                            PropertyType   = $propType
                            IsList         = ($null -ne $prop.Value.Type -and $prop.Value.Type -eq 'List')
                            IsFullProperty = $true
                            IsBaseType     = ($propType -in $noDepsTypes)
                            Value          = $prop.Value
                            Resource       = $prop
                        }
                    }
                }
                else {
                    $propType = if ($resource.Value.ItemType) {
                        if ($resource.Value.ItemType -eq 'Tag' -and $resource.Value.Type -eq 'List') {
                            'VSResourceTag'
                        }
                        else {
                            $ShortName -replace '\..*', $resource.Value.ItemType -replace '\W'
                        }
                    }
                    elseif ($resource.Value.Type) {
                        if ($resource.Value.ItemType -eq 'Tag' -and $resource.Value.Type -eq 'List') {
                            'VSResourceTag'
                        }
                        elseif ($resource.Value.Type -in $noDepsTypes) {
                            $resource.Value.Type
                        }
                        else {
                            $ShortName -replace '\..*', $resource.Value.Type -replace '\W'
                        }
                    }
                    elseif ($resource.Value.PrimitiveType) {
                        $resource.Value.PrimitiveType
                    }
                    elseif ($resource.Value.PrimitiveItemType) {
                        $resource.Value.PrimitiveItemType
                    }
                    switch -Regex ($propType) {
                        '^Boolean$' {
                            $propType = 'bool'
                        }
                        '^Double$' {
                            $propType = 'double'
                        }
                        '^(Integer|Number)$' {
                            $propType = 'int'
                        }
                        '^Long$' {
                            $propType = 'long'
                        }
                        '^Json$' {
                            $propType = 'VSJson'
                        }
                        '^Timestamp$' {
                            $propType = 'VSTimestamp'
                        }
                        '^String$' {
                            $propType = 'string'
                        }
                    }
                    [pscustomobject]@{
                        PropertyName   = $resource.Name
                        PropertyType   = $propType
                        IsList         = ($null -ne $resource.Value.Type -and $resource.Value.Type -eq 'List')
                        IsFullProperty = $true
                        IsBaseType     = ($propType -in $noDepsTypes)
                        Value          = $resource.Value
                        Resource       = $resource
                    }
                }
                $final += [pscustomobject]@{
                    Name          = $resource.Name
                    ResourceType  = 'Property'
                    ServiceName   = $ServiceName
                    ClassName     = $ClassName
                    FunctionName  = "Add-VS$ClassName"
                    Properties    = $propTypes
                    Documentation = $resource.Value.Documentation
                    Attributes    = $resource.Value.Attributes
                    Value         = $resource.Value
                    Resource      = $resource
                }
            }
            # Get the rest and add anything missing from us-east-1 for full coverage
            foreach ($region in $regHash.GetEnumerator() | Where-Object { $_.Key -ne 'us-east-1 (N. Virginia)' }) {
                try {
                    Write-BuildLog "Getting CloudFormation spec from: $($region.Key)"
                    $specs = Invoke-RestMethod $region.Value -Verbose:$false
                    if ($newResources = $specs.ResourceTypes.PSObject.Properties | Where-Object { $_.Name -notin $final.Name }) {
                        Write-Host -ForegroundColor Green "Found $($newResources.Count) new resource types in spec: $($region.Key)`n- $($newResources.Name -join "`n- ")"
                        foreach ($resource in $newResources) {
                            $ShortName = $resource.Name.Replace("AWS::", "")
                            $ServiceName = $ShortName.Split('::')[0]
                            if ($ServiceName -eq 'Serverless') {
                                $ServiceName = 'SAM'
                                $ShortName = $ShortName -replace '^Serverless', 'SAM'
                            }
                            $ClassName = $ShortName -replace '\W'
                            $final += [pscustomobject]@{
                                Name          = $resource.Name
                                ResourceType  = 'Resource'
                                ServiceName   = $ServiceName
                                ClassName     = $ClassName
                                FunctionName  = "New-VS$ClassName"
                                Properties    = $resource.Value.Properties
                                Documentation = $resource.Value.Documentation
                                Attributes    = $resource.Value.Attributes
                                Value         = $resource.Value
                                Resource      = $resource
                            }
                        }
                    }
                    if ($newProps = $specs.PropertyTypes.PSObject.Properties | Where-Object { $_.Name -notin $final.Name }) {
                        Write-Host -ForegroundColor Magenta "Found $($newProps.Count) new property types in spec: $($region.Key)`n- $($newProps.Name -join "`n- ")"
                        foreach ($resource in $newProps) {
                            $ShortName = $resource.Name.Replace("AWS::", "")
                            $ServiceName = $ShortName.Split('::')[0]
                            if ($ServiceName -eq 'Serverless') {
                                $ServiceName = 'SAM'
                                $ShortName = $ShortName -replace '^Serverless', 'SAM'
                            }
                            $ClassName = $ShortName -replace '\W'
                            $propTypes = if ($resource.Value.Properties) {
                                $resource.Value.Properties.PSObject.Properties
                                foreach ($prop in $resource.Value.Properties.PSObject.Properties) {
                                    $propType = if ($prop.Value.ItemType) {
                                        if ($prop.Value.ItemType -eq 'Tag' -and $prop.Value.Type -eq 'List') {
                                            'VSResourceTag'
                                        }
                                        else {
                                            $ShortName -replace '\..*', $prop.Value.ItemType -replace '\W'
                                        }
                                    }
                                    elseif ($prop.Value.Type) {
                                        if ($prop.Value.ItemType -eq 'Tag' -and $prop.Value.Type -eq 'List') {
                                            'VSResourceTag'
                                        }
                                        elseif ($prop.Value.Type -in $noDepsTypes) {
                                            $prop.Value.Type
                                        }
                                        else {
                                            $ShortName -replace '\..*', $prop.Value.Type -replace '\W'
                                        }
                                    }
                                    elseif ($prop.Value.PrimitiveType) {
                                        $prop.Value.PrimitiveType
                                    }
                                    elseif ($prop.Value.PrimitiveItemType) {
                                        $prop.Value.PrimitiveItemType
                                    }
                                    switch -Regex ($propType) {
                                        '^Boolean$' {
                                            $propType = 'bool'
                                        }
                                        '^Double$' {
                                            $propType = 'double'
                                        }
                                        '^(Integer|Number)$' {
                                            $propType = 'int'
                                        }
                                        '^Long$' {
                                            $propType = 'long'
                                        }
                                        '^Json$' {
                                            $propType = 'VSJson'
                                        }
                                        '^Timestamp$' {
                                            $propType = 'VSTimestamp'
                                        }
                                        '^String$' {
                                            $propType = 'string'
                                        }
                                    }
                                    [pscustomobject]@{
                                        PropertyName   = $prop.Name
                                        PropertyType   = $propType
                                        IsList         = ($null -ne $prop.Value.Type -and $prop.Value.Type -eq 'List')
                                        IsFullProperty = $true
                                        IsBaseType     = ($propType -in $noDepsTypes)
                                        Value          = $prop.Value
                                        Resource       = $prop
                                    }
                                }
                            }
                            else {
                                $propType = if ($resource.Value.ItemType) {
                                    if ($resource.Value.ItemType -eq 'Tag' -and $resource.Value.Type -eq 'List') {
                                        'VSResourceTag'
                                    }
                                    else {
                                        $ShortName -replace '\..*', $resource.Value.ItemType -replace '\W'
                                    }
                                }
                                elseif ($resource.Value.Type) {
                                    if ($resource.Value.ItemType -eq 'Tag' -and $resource.Value.Type -eq 'List') {
                                        'VSResourceTag'
                                    }
                                    elseif ($resource.Value.Type -in $noDepsTypes) {
                                        $resource.Value.Type
                                    }
                                    else {
                                        $ShortName -replace '\..*', $resource.Value.Type -replace '\W'
                                    }
                                }
                                elseif ($resource.Value.PrimitiveType) {
                                    $resource.Value.PrimitiveType
                                }
                                elseif ($resource.Value.PrimitiveItemType) {
                                    $resource.Value.PrimitiveItemType
                                }
                                switch -Regex ($propType) {
                                    '^Boolean$' {
                                        $propType = 'bool'
                                    }
                                    '^Double$' {
                                        $propType = 'double'
                                    }
                                    '^(Integer|Number)$' {
                                        $propType = 'int'
                                    }
                                    '^Long$' {
                                        $propType = 'long'
                                    }
                                    '^Json$' {
                                        $propType = 'VSJson'
                                    }
                                    '^Timestamp$' {
                                        $propType = 'VSTimestamp'
                                    }
                                    '^String$' {
                                        $propType = 'string'
                                    }
                                }
                                [pscustomobject]@{
                                    PropertyName   = $resource.Name
                                    PropertyType   = $propType
                                    IsList         = ($null -ne $resource.Value.Type -and $resource.Value.Type -eq 'List')
                                    IsFullProperty = $true
                                    IsBaseType     = ($propType -in $noDepsTypes)
                                    Value          = $resource.Value
                                    Resource       = $resource
                                }
                            }
                            $final += [pscustomobject]@{
                                Name          = $resource.Name
                                ResourceType  = 'Property'
                                ServiceName   = $ServiceName
                                ClassName     = $ClassName
                                FunctionName  = "Add-VS$ClassName"
                                Properties    = $propTypes
                                Documentation = $resource.Value.Documentation
                                Attributes    = $resource.Value.Attributes
                                Value         = $resource.Value
                                Resource      = $resource
                            }
                        }
                    }
                }
                catch {
                    Write-Host -ForegroundColor Yellow "WARNING: Failed to get specs from region: $($_.Key)"
                }
            }
            ConvertTo-Json $final -Depth 100 | Set-Content $dictJsonPath -Encoding UTF8 -Force
        }
    }
    End {
        return $final
    }
}
