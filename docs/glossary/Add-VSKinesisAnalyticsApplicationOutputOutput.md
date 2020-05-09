# Add-VSKinesisAnalyticsApplicationOutputOutput

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template.
Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written.
The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationOutputOutput [-DestinationSchema] <Object> [[-LambdaOutput] <Object>]
 [[-KinesisFirehoseOutput] <Object>] [[-KinesisStreamsOutput] <Object>] [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template.
Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written.
The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.

For limits on how many destinations an application can write and other limitations, see Limits: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html.

## PARAMETERS

### -DestinationSchema
Describes the data format when records are written to the destination.
For more information, see Configuring Application Output: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html.

Type: DestinationSchema
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-destinationschema
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

### -LambdaOutput
Identifies an AWS Lambda function as the destination.

Type: LambdaOutput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-lambdaoutput
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

### -KinesisFirehoseOutput
Identifies an Amazon Kinesis Firehose delivery stream as the destination.

Type: KinesisFirehoseOutput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisfirehoseoutput
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

### -KinesisStreamsOutput
Identifies an Amazon Kinesis stream as the destination.

Type: KinesisStreamsOutput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisstreamsoutput
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

### -Name
Name of the in-application stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-name
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.Output
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html)

