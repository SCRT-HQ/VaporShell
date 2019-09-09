# Add-VSSESReceiptRuleS3Action

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.S3Action resource property to the template.
When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3 bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

## SYNTAX

```
Add-VSSESReceiptRuleS3Action [-BucketName] <Object> [[-KmsKeyArn] <Object>] [[-TopicArn] <Object>]
 [[-ObjectKeyPrefix] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.S3Action resource property to the template.
When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3 bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources.
For information about giving permissions, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html.

**Note**

When you save your emails to an Amazon S3 bucket, the maximum email size (including headers is 30 MB.
Emails that are larger than 30 MB aren't saved.

For information about specifying Amazon S3 actions in receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BucketName
The name of the Amazon S3 bucket that you want to send incoming mail to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsKeyArn
The customer master key that Amazon SES should use to encrypt your emails before saving them to the Amazon S3 bucket.
You can use the default master key or a custom master key that you created in AWS KMS as follows:
+ To use the default master key, provide an ARN in the form of arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses.
For example, if your AWS account ID is 123456789012 and you want to use the default master key in the US West Oregon Region, the ARN of the default master key would be arn:aws:kms:us-west-2:123456789012:alias/aws/ses.
If you use the default master key, you don't need to perform any extra steps to give Amazon SES permission to use the key.
+ To use a custom master key that you created in AWS KMS, provide the ARN of the master key and ensure that you add a statement to your key's policy to give Amazon SES permission to use it.
For more information about giving permissions, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html.
For more information about key policies, see the AWS KMS Developer Guide: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html.
If you don't specify a master key, Amazon SES doesn't encrypt your emails.
Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail is submitted to Amazon S3 for storage.
It isn't encrypted using Amazon S3 server-side encryption.
This means that you must use the Amazon S3 encryption client to decrypt the email after retrieving it from Amazon S3, as the service has no access to use your AWS KMS keys for decryption.
This encryption client is currently available with the AWS SDK for Java: http://aws.amazon.com/sdk-for-java/ and AWS SDK for Ruby: http://aws.amazon.com/sdk-for-ruby/ only.
For more information about client-side encryption using AWS KMS master keys, see the Amazon S3 Developer Guide: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopicArn
The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket.
An example of an Amazon SNS topic ARN is arn:aws:sns:us-west-2:123456789012:MyTopic.
For more information about Amazon SNS topics, see the Amazon SNS Developer Guide: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectKeyPrefix
The key prefix of the Amazon S3 bucket.
The key prefix is similar to a directory name that enables you to store similar data under the same directory in a bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ReceiptRule.S3Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html)

