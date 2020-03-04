function Add-VSSESReceiptRuleS3Action {
    <#
    .SYNOPSIS
        Adds an AWS::SES::ReceiptRule.S3Action resource property to the template. When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3 bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

    .DESCRIPTION
        Adds an AWS::SES::ReceiptRule.S3Action resource property to the template.
When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3 bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html.

**Note**

When you save your emails to an Amazon S3 bucket, the maximum email size (including headers is 30 MB. Emails that are larger than 30 MB aren't saved.

For information about specifying Amazon S3 actions in receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html

    .PARAMETER BucketName
        The name of the Amazon S3 bucket that you want to send incoming mail to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER KmsKeyArn
        The customer master key that Amazon SES should use to encrypt your emails before saving them to the Amazon S3 bucket. You can use the default master key or a custom master key that you created in AWS KMS as follows:
+ To use the default master key, provide an ARN in the form of arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses. For example, if your AWS account ID is 123456789012 and you want to use the default master key in the US West Oregon Region, the ARN of the default master key would be arn:aws:kms:us-west-2:123456789012:alias/aws/ses. If you use the default master key, you don't need to perform any extra steps to give Amazon SES permission to use the key.
+ To use a custom master key that you created in AWS KMS, provide the ARN of the master key and ensure that you add a statement to your key's policy to give Amazon SES permission to use it. For more information about giving permissions, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html.
For more information about key policies, see the AWS KMS Developer Guide: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html. If you don't specify a master key, Amazon SES doesn't encrypt your emails.
Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail is submitted to Amazon S3 for storage. It isn't encrypted using Amazon S3 server-side encryption. This means that you must use the Amazon S3 encryption client to decrypt the email after retrieving it from Amazon S3, as the service has no access to use your AWS KMS keys for decryption. This encryption client is currently available with the AWS SDK for Java: http://aws.amazon.com/sdk-for-java/ and AWS SDK for Ruby: http://aws.amazon.com/sdk-for-ruby/ only. For more information about client-side encryption using AWS KMS master keys, see the Amazon S3 Developer Guide: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TopicArn
        The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. You can find the ARN of a topic by using the ListTopics: https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html operation in the Amazon SNS API.
For more information about Amazon SNS topics, see the Amazon SNS Developer Guide: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ObjectKeyPrefix
        The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that enables you to store similar data under the same directory in a bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SES.ReceiptRule.S3Action')]
    [cmdletbinding()]
    Param
    (
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
        $BucketName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KmsKeyArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TopicArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ObjectKeyPrefix
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.ReceiptRule.S3Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
