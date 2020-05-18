# Add-VSKinesisAnalyticsApplicationKinesisStreamsInput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.KinesisStreamsInput resource property to the template.
Identifies an Amazon Kinesis stream as the streaming source.
You provide the stream's Amazon Resource Name (ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationKinesisStreamsInput [-ResourceARN] <Object> [-RoleARN] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.KinesisStreamsInput resource property to the template.
Identifies an Amazon Kinesis stream as the streaming source.
You provide the stream's Amazon Resource Name (ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.

## PARAMETERS

### -ResourceARN
ARN of the input Amazon Kinesis stream to read.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-resourcearn
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
You need to grant the necessary permissions to this role.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-rolearn
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

### Vaporshell.Resource.KinesisAnalytics.Application.KinesisStreamsInput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html)

