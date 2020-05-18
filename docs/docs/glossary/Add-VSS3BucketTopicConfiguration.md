# Add-VSS3BucketTopicConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.TopicConfiguration resource property to the template.
A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS topic when Amazon S3 detects specified events.

## SYNTAX

```
Add-VSS3BucketTopicConfiguration [-Event] <Object> [[-Filter] <Object>] [-Topic] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.TopicConfiguration resource property to the template.
A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS topic when Amazon S3 detects specified events.

## PARAMETERS

### -Event
The Amazon S3 bucket event about which to send notifications.
For more information, see Supported Event Types: https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-event
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

### -Filter
The filtering rules that determine for which objects to send notifications.
For example, you can create a filter so that Amazon S3 sends notifications only when image files with a .jpg extension are added to the bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-filter
Type: NotificationFilter
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

### -Topic
The Amazon Resource Name ARN of the Amazon SNS topic to which Amazon S3 publishes a message when it detects events of the specified type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-topic
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.TopicConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html)

