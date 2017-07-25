function Add-VSCloudFrontDistributionCacheBehavior {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.CacheBehavior resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.CacheBehavior resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html

    .PARAMETER AllowedMethods
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-allowedmethods    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER CachedMethods
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-cachedmethods    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER Compress
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-compress    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DefaultTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-defaultttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ForwardedValues
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-forwardedvalues    
		Required: True    
		Type: ForwardedValues    
		UpdateType: Mutable    

    .PARAMETER MaxTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-maxttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER MinTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-minttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER PathPattern
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-pathpattern    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER SmoothStreaming
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-smoothstreaming    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER TargetOriginId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-targetoriginid    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER TrustedSigners
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-trustedsigners    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER ViewerProtocolPolicy
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-viewerprotocolpolicy    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.CacheBehavior')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AllowedMethods,
        [parameter(Mandatory = $false)]
        $CachedMethods,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $Compress,
        [parameter(Mandatory = $false)]
        $DefaultTTL,
        [parameter(Mandatory = $true)]
        $ForwardedValues,
        [parameter(Mandatory = $false)]
        $MaxTTL,
        [parameter(Mandatory = $false)]
        $MinTTL,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $PathPattern,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $SmoothStreaming,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $TargetOriginId,
        [parameter(Mandatory = $false)]
        $TrustedSigners,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $ViewerProtocolPolicy
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.CacheBehavior'
    }
}
