# Add-VSS3BucketNotificationConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.NotificationConfiguration resource property to the template.
Describes the notification configuration for an Amazon S3 bucket.

## SYNTAX

```
Add-VSS3BucketNotificationConfiguration [[-LambdaConfigurations] <Object>] [[-QueueConfigurations] <Object>]
 [[-TopicConfigurations] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.NotificationConfiguration resource property to the template.
Describes the notification configuration for an Amazon S3 bucket.

**Note**

If you create the target resource and related permissions in the same template, you might have a circular dependency.

For example, you might use the AWS::Lambda::Permission resource to grant the bucket permission to invoke an AWS Lambda function.
However, AWS CloudFormation can't create the bucket until the bucket has permission to invoke the function (AWS CloudFormation checks whether the bucket can invoke the function.
If you're using Refs to pass the bucket name, this leads to a circular dependency.

To avoid this dependency, you can create all resources without specifying the notification configuration.
Then, update the stack with a notification configuration.

For more information on permissions, see AWS::Lambda::Permission: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html and Granting Permissions to Publish Event Notification Messages to a Destination: https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#grant-destinations-permissions-to-s3.

## PARAMETERS

### -LambdaConfigurations
Describes the AWS Lambda functions to invoke and the events for which to invoke them.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig
DuplicatesAllowed: False
ItemType: LambdaConfiguration
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueConfigurations
The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-queueconfig
DuplicatesAllowed: False
ItemType: QueueConfiguration
Type: List
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

### -TopicConfigurations
The topic to which notifications are sent and the events for which notifications are generated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-topicconfig
DuplicatesAllowed: False
ItemType: TopicConfiguration
Type: List
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.NotificationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html)

