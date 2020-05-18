# Add-VSKinesisAnalyticsApplicationOutputKinesisFirehoseOutput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput resource property to the template.
When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination.
You provide the stream Amazon Resource Name (ARN and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationOutputKinesisFirehoseOutput [-ResourceARN] <Object> [-RoleARN] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput resource property to the template.
When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination.
You provide the stream Amazon Resource Name (ARN and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.

## PARAMETERS

### -ResourceARN
ARN of the destination Amazon Kinesis Firehose delivery stream to write to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-resourcearn
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
ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf.
You need to grant the necessary permissions to this role.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-rolearn
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

### Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.KinesisFirehoseOutput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html)

