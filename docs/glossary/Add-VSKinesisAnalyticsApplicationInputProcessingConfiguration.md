# Add-VSKinesisAnalyticsApplicationInputProcessingConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.InputProcessingConfiguration resource property to the template.
Provides a description of a processor that is used to preprocess the records in the stream before being processed by your application code.
Currently, the only input processor available is AWS Lambda: https://docs.aws.amazon.com/lambda/.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInputProcessingConfiguration [[-InputLambdaProcessor] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.InputProcessingConfiguration resource property to the template.
Provides a description of a processor that is used to preprocess the records in the stream before being processed by your application code.
Currently, the only input processor available is AWS Lambda: https://docs.aws.amazon.com/lambda/.

## PARAMETERS

### -InputLambdaProcessor
The InputLambdaProcessor: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html that is used to preprocess the records in the stream before being processed by your application code.

Type: InputLambdaProcessor
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html#cfn-kinesisanalytics-application-inputprocessingconfiguration-inputlambdaprocessor
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

### Vaporshell.Resource.KinesisAnalytics.Application.InputProcessingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html)

