# Add-VSKinesisAnalyticsV2ApplicationInputLambdaProcessor

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.InputLambdaProcessor resource property to the template.
An object that contains the Amazon Resource Name (ARN of the AWS Lambda function that is used to preprocess records in the stream in an SQL-based Amazon Kinesis Data Analytics application.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationInputLambdaProcessor [-ResourceARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.InputLambdaProcessor resource property to the template.
An object that contains the Amazon Resource Name (ARN of the AWS Lambda function that is used to preprocess records in the stream in an SQL-based Amazon Kinesis Data Analytics application.

## PARAMETERS

### -ResourceARN
The ARN of the AWS Lambda function that operates on records in the stream.
To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN.
For more information about Lambda ARNs, see Example ARNs: AWS Lambda: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html#cfn-kinesisanalyticsv2-application-inputlambdaprocessor-resourcearn
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

### Vaporshell.Resource.KinesisAnalyticsV2.Application.InputLambdaProcessor
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html)

