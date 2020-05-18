# Add-VSKinesisAnalyticsV2ApplicationInput

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.Input resource property to the template.
When you configure the application input for an SQL-based Amazon Kinesis Data Analytics application, you specify the streaming source, the in-application stream name that is created, and the mapping between the two.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationInput [-NamePrefix] <Object> [-InputSchema] <Object>
 [[-KinesisStreamsInput] <Object>] [[-KinesisFirehoseInput] <Object>]
 [[-InputProcessingConfiguration] <Object>] [[-InputParallelism] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.Input resource property to the template.
When you configure the application input for an SQL-based Amazon Kinesis Data Analytics application, you specify the streaming source, the in-application stream name that is created, and the mapping between the two.

## PARAMETERS

### -NamePrefix
The name prefix to use when creating an in-application stream.
Suppose that you specify a prefix "MyInApplicationStream." Kinesis Data Analytics then creates one or more as per the InputParallelism count you specified in-application streams with the names "MyInApplicationStream_001," "MyInApplicationStream_002," and so on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-nameprefix
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputschema
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
If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name ARN.

Type: KinesisStreamsInput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisstreamsinput
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
If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.

Type: KinesisFirehoseInput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisfirehoseinput
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
The InputProcessingConfiguration: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_InputProcessingConfiguration.html for the input.
An input processor transforms records as they are received from the stream, before the application's SQL code executes.
Currently, the only input processing configuration available is InputLambdaProcessor: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_InputLambdaProcessor.html.

Type: InputProcessingConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputprocessingconfiguration
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

Type: InputParallelism
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputparallelism
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

### Vaporshell.Resource.KinesisAnalyticsV2.Application.Input
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html)

