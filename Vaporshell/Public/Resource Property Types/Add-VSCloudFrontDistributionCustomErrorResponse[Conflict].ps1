function Add-VSCloudFrontDistributionCustomErrorResponse {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.CustomErrorResponse resource property to the template

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.CustomErrorResponse resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html

    .PARAMETER ErrorCachingMinTTL
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-errorcachingminttl    
		PrimitiveType: Long    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ErrorCode
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-errorcode    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER ResponseCode
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-responsecode    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ResponsePagePath
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-responsepagepath    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.CustomErrorResponse')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ErrorCachingMinTTL,
        [parameter(Mandatory = $true)]
        [Int]
        $ErrorCode,
        [parameter(Mandatory = $false)]
        [Int]
        $ResponseCode,
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
        $ResponsePagePath
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.CustomErrorResponse'
    }
}
