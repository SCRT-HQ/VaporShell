# Add-VSKinesisAnalyticsV2ApplicationOutputLambdaOutput

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.LambdaOutput resource property to the template.
When you configure an SQL-based Amazon Kinesis Data Analytics application's output, identifies an AWS Lambda function as the destination.
You provide the function Amazon Resource Name (ARN of the Lambda function.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationOutputLambdaOutput [-ResourceARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.LambdaOutput resource property to the template.
When you configure an SQL-based Amazon Kinesis Data Analytics application's output, identifies an AWS Lambda function as the destination.
You provide the function Amazon Resource Name (ARN of the Lambda function.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ResourceARN
The Amazon Resource Name ARN of the destination Lambda function to write to.
To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN.
For more information about Lambda ARNs, see Example ARNs: AWS Lambda: /general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html#cfn-kinesisanalyticsv2-applicationoutput-lambdaoutput-resourcearn
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

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.LambdaOutput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html)

