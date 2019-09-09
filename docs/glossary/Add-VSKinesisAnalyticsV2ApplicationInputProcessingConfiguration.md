# Add-VSKinesisAnalyticsV2ApplicationInputProcessingConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.InputProcessingConfiguration resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes a processor that is used to preprocess the records in the stream before being processed by your application code.
Currently, the only input processor available is AWS Lambda: https://docs.aws.amazon.com/lambda/.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationInputProcessingConfiguration [[-InputLambdaProcessor] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.InputProcessingConfiguration resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes a processor that is used to preprocess the records in the stream before being processed by your application code.
Currently, the only input processor available is AWS Lambda: https://docs.aws.amazon.com/lambda/.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputLambdaProcessor
The InputLambdaProcessor: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_InputLambdaProcessor.html that is used to preprocess the records in the stream before being processed by your application code.

Type: InputLambdaProcessor
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html#cfn-kinesisanalyticsv2-application-inputprocessingconfiguration-inputlambdaprocessor
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.Application.InputProcessingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html)

