function Add-VSS3BucketBucketEncryption {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.BucketEncryption resource property to the template. Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3 or AWS KMS-managed keys (SSE-KMS bucket. For information about the Amazon S3 default encryption feature, see  Amazon S3 Default Encryption for S3 Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html in the *Amazon Simple Storage Service Developer Guide*.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.BucketEncryption resource property to the template.
Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3 or AWS KMS-managed keys (SSE-KMS bucket. For information about the Amazon S3 default encryption feature, see  Amazon S3 Default Encryption for S3 Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html in the *Amazon Simple Storage Service Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html

    .PARAMETER ServerSideEncryptionConfiguration
        Specifies the default server-side-encryption configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html#cfn-s3-bucket-bucketencryption-serversideencryptionconfiguration
        DuplicatesAllowed: False
        ItemType: ServerSideEncryptionRule
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.BucketEncryption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.ServerSideEncryptionRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServerSideEncryptionConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.BucketEncryption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
