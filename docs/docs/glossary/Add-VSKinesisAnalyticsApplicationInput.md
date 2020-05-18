# Add-VSKinesisAnalyticsApplicationInput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.Input resource property to the template.
When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two.
For more information, see Configuring Application Input: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInput [-NamePrefix] <Object> [-InputSchema] <Object>
 [[-KinesisStreamsInput] <Object>] [[-KinesisFirehoseInput] <Object>]
 [[-InputProcessingConfiguration] <Object>] [[-InputParallelism] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.Input resource property to the template.
When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two.
For more information, see Configuring Application Input: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.

## PARAMETERS

### -NamePrefix
Name prefix to use when creating an in-application stream.
Suppose that you specify a prefix "MyInApplicationStream." Amazon Kinesis Analytics then creates one or more as per the InputParallelism count you specified in-application streams with names "MyInApplicationStream_001," "MyInApplicationStream_002," and so on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-nameprefix
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

### -InputSchema
Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
Also used to describe the format of the reference data source.

Type: InputSchema
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputschema
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

### -KinesisStreamsInput
If the streaming source is an Amazon Kinesis stream, identifies the stream's Amazon Resource Name ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.
Note: Either KinesisStreamsInput or KinesisFirehoseInput is required.

Type: KinesisStreamsInput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisstreamsinput
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

### -KinesisFirehoseInput
If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.
Note: Either KinesisStreamsInput or KinesisFirehoseInput is required.

Type: KinesisFirehoseInput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisfirehoseinput
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

### -InputProcessingConfiguration
The InputProcessingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html for the input.
An input processor transforms records as they are received from the stream, before the application's SQL code executes.
Currently, the only input processing configuration available is InputLambdaProcessor: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html.

Type: InputProcessingConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputprocessingconfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputParallelism
Describes the number of in-application streams to create.
Data from your source is routed to these in-application input streams.
See Configuring Application Input: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.

Type: InputParallelism
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputparallelism
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.Application.Input
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html)

