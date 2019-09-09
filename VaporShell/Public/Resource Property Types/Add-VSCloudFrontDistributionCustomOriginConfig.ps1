function Add-VSCloudFrontDistributionCustomOriginConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.CustomOriginConfig resource property to the template. A custom origin or an Amazon S3 bucket configured as a website endpoint.

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.CustomOriginConfig resource property to the template.
A custom origin or an Amazon S3 bucket configured as a website endpoint.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html

    .PARAMETER OriginReadTimeout
        You can create a custom origin read timeout. All timeout units are in seconds. The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 4 seconds; the maximum is 60 seconds.
If you need to increase the maximum time limit, contact the AWS Support Center: https://console.aws.amazon.com/support/home#/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originreadtimeout
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER HTTPSPort
        The HTTPS port the custom origin listens on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpsport
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER OriginKeepaliveTimeout
        You can create a custom keep-alive timeout. All timeout units are in seconds. The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 1 second; the maximum is 60 seconds.
If you need to increase the maximum time limit, contact the AWS Support Center: https://console.aws.amazon.com/support/home#/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originkeepalivetimeout
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER OriginSSLProtocols
        The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originsslprotocols
        UpdateType: Mutable

    .PARAMETER HTTPPort
        The HTTP port the custom origin listens on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpport
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER OriginProtocolPolicy
        The origin protocol policy to apply to your origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originprotocolpolicy
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.CustomOriginConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $OriginReadTimeout,
        [parameter(Mandatory = $false)]
        [Int]
        $HTTPSPort,
        [parameter(Mandatory = $false)]
        [Int]
        $OriginKeepaliveTimeout,
        [parameter(Mandatory = $false)]
        $OriginSSLProtocols,
        [parameter(Mandatory = $false)]
        [Int]
        $HTTPPort,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OriginProtocolPolicy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.CustomOriginConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
