# Add-VSKinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisFirehoseOutput resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, when configuring application output, identifies a Kinesis Data Firehose delivery stream as the destination.
You provide the stream Amazon Resource Name (ARN of the delivery stream.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput [-ResourceARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisFirehoseOutput resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, when configuring application output, identifies a Kinesis Data Firehose delivery stream as the destination.
You provide the stream Amazon Resource Name (ARN of the delivery stream.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ResourceARN
The ARN of the destination delivery stream to write to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput-resourcearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.KinesisFirehoseOutput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html)

