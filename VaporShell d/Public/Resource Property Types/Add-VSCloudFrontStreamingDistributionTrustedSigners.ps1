function Add-VSCloudFrontStreamingDistributionTrustedSigners {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html

    .PARAMETER Enabled
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER AwsAccountNumbers
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-awsaccountnumbers    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.StreamingDistribution.TrustedSigners')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $Enabled,
        [parameter(Mandatory = $false)]
        $AwsAccountNumbers
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.StreamingDistribution.TrustedSigners'
    }
}
