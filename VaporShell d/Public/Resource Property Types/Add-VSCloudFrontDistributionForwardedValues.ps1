function Add-VSCloudFrontDistributionForwardedValues {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html

    .PARAMETER Cookies
		Type: Cookies    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies    
		UpdateType: Mutable    

    .PARAMETER Headers
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers    
		UpdateType: Mutable    

    .PARAMETER QueryString
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER QueryStringCacheKeys
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.ForwardedValues')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Cookies,
        [parameter(Mandatory = $false)]
        $Headers,
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $QueryString,
        [parameter(Mandatory = $false)]
        $QueryStringCacheKeys
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.ForwardedValues'
    }
}
