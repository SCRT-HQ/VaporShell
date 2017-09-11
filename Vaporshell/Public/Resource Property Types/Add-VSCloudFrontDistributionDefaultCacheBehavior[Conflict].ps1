function Add-VSCloudFrontDistributionDefaultCacheBehavior {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.DefaultCacheBehavior resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.DefaultCacheBehavior resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html

    .PARAMETER AllowedMethods
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-allowedmethods    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER CachedMethods
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-cachedmethods    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER Compress
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-compress    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DefaultTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-defaultttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ForwardedValues
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-forwardedvalues    
		Required: True    
		Type: ForwardedValues    
		UpdateType: Mutable    

    .PARAMETER MaxTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-maxttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER MinTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-minttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER SmoothStreaming
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-smoothstreaming    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER TargetOriginId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-targetoriginid    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER TrustedSigners
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-trustedsigners    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER ViewerProtocolPolicy
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-viewerprotocolpolicy    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.DefaultCacheBehavior')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.DefaultCacheBehavior'
    }
}
