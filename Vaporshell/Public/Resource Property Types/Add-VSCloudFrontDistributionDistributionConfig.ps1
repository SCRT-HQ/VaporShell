function Add-VSCloudFrontDistributionDistributionConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.DistributionConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.DistributionConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html

    .PARAMETER Aliases
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-aliases    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER CacheBehaviors
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-cachebehaviors    
		DuplicatesAllowed: False    
		ItemType: CacheBehavior    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER Comment
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-comment    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CustomErrorResponses
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-customerrorresponses    
		DuplicatesAllowed: False    
		ItemType: CustomErrorResponse    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER DefaultCacheBehavior
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-defaultcachebehavior    
		Required: True    
		Type: DefaultCacheBehavior    
		UpdateType: Mutable    

    .PARAMETER DefaultRootObject
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-defaultrootobject    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Enabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-enabled    
		PrimitiveType: Boolean    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER HttpVersion
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-httpversion    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Logging
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-logging    
		Required: False    
		Type: Logging    
		UpdateType: Mutable    

    .PARAMETER Origins
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-origins    
		DuplicatesAllowed: False    
		ItemType: Origin    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER PriceClass
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-priceclass    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Restrictions
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-restrictions    
		Required: False    
		Type: Restrictions    
		UpdateType: Mutable    

    .PARAMETER ViewerCertificate
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-viewercertificate    
		Required: False    
		Type: ViewerCertificate    
		UpdateType: Mutable    

    .PARAMETER WebACLId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-webaclid    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.DistributionConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Aliases,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CloudFront.Distribution.CacheBehavior"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $CacheBehaviors,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Comment,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CloudFront.Distribution.CustomErrorResponse"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $CustomErrorResponses,
        [parameter(Mandatory = $true)]
        $DefaultCacheBehavior,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $DefaultRootObject,
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $Enabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $HttpVersion,
        [parameter(Mandatory = $false)]
        $Logging,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CloudFront.Distribution.Origin"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Origins,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $PriceClass,
        [parameter(Mandatory = $false)]
        $Restrictions,
        [parameter(Mandatory = $false)]
        $ViewerCertificate,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $WebACLId
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.DistributionConfig'
    }
}
