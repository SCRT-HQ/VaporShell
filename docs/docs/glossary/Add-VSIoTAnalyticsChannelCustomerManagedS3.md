# Add-VSIoTAnalyticsChannelCustomerManagedS3

## SYNOPSIS
Adds an AWS::IoTAnalytics::Channel.CustomerManagedS3 resource property to the template.
Use this to store channel data in an S3 bucket that you manage.
When customer managed storage is selected, the "retentionPeriod" parameter is ignored.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the channel.

## SYNTAX

```
Add-VSIoTAnalyticsChannelCustomerManagedS3 [-Bucket] <Object> [-RoleArn] <Object> [[-KeyPrefix] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Channel.CustomerManagedS3 resource property to the template.
Use this to store channel data in an S3 bucket that you manage.
When customer managed storage is selected, the "retentionPeriod" parameter is ignored.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the channel.

## PARAMETERS

### -Bucket
The name of the Amazon S3 bucket in which channel data is stored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-bucket
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

### -RoleArn
The ARN of the role which grants AWS IoT Analytics permission to interact with your Amazon S3 resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyPrefix
Optional\] The prefix used to create the keys of the channel data objects.
Each object in an Amazon S3 bucket has a key that is its unique identifier within the bucket each object in a bucket has exactly one key.
The prefix must end with a '/'.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-keyprefix
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTAnalytics.Channel.CustomerManagedS3
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html)

