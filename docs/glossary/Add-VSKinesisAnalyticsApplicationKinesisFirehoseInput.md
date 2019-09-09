# Add-VSKinesisAnalyticsApplicationKinesisFirehoseInput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.KinesisFirehoseInput resource property to the template.
Identifies an Amazon Kinesis Firehose delivery stream as the streaming source.
You provide the delivery stream's Amazon Resource Name (ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationKinesisFirehoseInput [-ResourceARN] <Object> [-RoleARN] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.KinesisFirehoseInput resource property to the template.
Identifies an Amazon Kinesis Firehose delivery stream as the streaming source.
You provide the delivery stream's Amazon Resource Name (ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ResourceARN
ARN of the input delivery stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-resourcearn
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

### -RoleARN
ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.
You need to make sure that the role has the necessary permissions to access the stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-rolearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.Application.KinesisFirehoseInput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html)

