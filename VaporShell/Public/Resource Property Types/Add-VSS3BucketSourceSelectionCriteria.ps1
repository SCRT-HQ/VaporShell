function Add-VSS3BucketSourceSelectionCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template. A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer master key (CMK stored in AWS Key Management Service (SSE-KMS.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template.
A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer master key (CMK stored in AWS Key Management Service (SSE-KMS.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html

    .PARAMETER SseKmsEncryptedObjects
        A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If you include SourceSelectionCriteria in the replication configuration, this element is required.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-ssekmsencryptedobjects
        Type: SseKmsEncryptedObjects
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.SourceSelectionCriteria')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SseKmsEncryptedObjects
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.SourceSelectionCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
