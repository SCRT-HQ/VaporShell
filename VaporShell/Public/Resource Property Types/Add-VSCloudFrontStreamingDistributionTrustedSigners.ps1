function Add-VSCloudFrontStreamingDistributionTrustedSigners {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template. A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

    .DESCRIPTION
        Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template.
A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

If you want to require signed URLs in requests for objects in the target origin that match the PathPattern for this cache behavior, specify true for Enabled, and specify the applicable values for Quantity and Items. For more information, see Serving Private Content through CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html in the * Amazon CloudFront Developer Guide*.

If you don't want to require signed URLs in requests for objects that match PathPattern, specify false for Enabled and 0 for Quantity. Omit Items.

To add, change, or remove one or more trusted signers, change Enabled to true (if it's currently false, change Quantity as applicable, and specify all of the trusted signers that you want to include in the updated distribution.

For more information about updating the distribution configuration, see DistributionConfig: https://docs.aws.amazon.com/cloudfront/latest/APIReference/DistributionConfig.html in the *Amazon CloudFront API Reference*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html

    .PARAMETER Enabled
        Specifies whether you want to require viewers to use signed URLs to access the files specified by PathPattern and TargetOriginId.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER AwsAccountNumbers
        An AWS account that is included in the TrustedSigners complex type for this distribution. Valid values include:
+  self, which is the AWS account used to create the distribution.
+ An AWS account number.

        PrimitiveItemType: String
        Type: List
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
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.StreamingDistribution.TrustedSigners'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
