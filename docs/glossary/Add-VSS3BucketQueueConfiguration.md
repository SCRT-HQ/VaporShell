# Add-VSS3BucketQueueConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.QueueConfiguration resource property to the template.
Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS queue when Amazon S3 detects specified events.

## SYNTAX

```
Add-VSS3BucketQueueConfiguration [-Event] <Object> [[-Filter] <Object>] [-Queue] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.QueueConfiguration resource property to the template.
Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS queue when Amazon S3 detects specified events.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Event
The Amazon S3 bucket event about which you want to publish messages to Amazon SQS.
For more information, see Supported Event Types: https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-event
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
The filtering rules that determine which objects trigger notifications.
For example, you can create a filter so that Amazon S3 sends notifications only when image files with a .jpg extension are added to the bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-filter
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

### -Queue
The Amazon Resource Name ARN of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-queue
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

### Vaporshell.Resource.S3.Bucket.QueueConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html)

