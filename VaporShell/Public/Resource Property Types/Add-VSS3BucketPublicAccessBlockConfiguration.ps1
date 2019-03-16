function Add-VSS3BucketPublicAccessBlockConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html

    .PARAMETER BlockPublicAcls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicacls    
        PrimitiveType: Boolean    
        Required: False    
        UpdateType: Mutable    

    .PARAMETER BlockPublicPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicpolicy    
        PrimitiveType: Boolean    
        Required: False    
        UpdateType: Mutable    

    .PARAMETER IgnorePublicAcls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-ignorepublicacls    
        PrimitiveType: Boolean    
        Required: False    
        UpdateType: Mutable    

    .PARAMETER RestrictPublicBuckets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-restrictpublicbuckets    
        PrimitiveType: Boolean    
        Required: False    
        UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.PublicAccessBlockConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $BlockPublicAcls,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $BlockPublicPolicy,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IgnorePublicAcls,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RestrictPublicBuckets
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.PublicAccessBlockConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
