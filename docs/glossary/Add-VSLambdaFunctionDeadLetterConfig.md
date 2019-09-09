# Add-VSLambdaFunctionDeadLetterConfig

## SYNOPSIS
Adds an AWS::Lambda::Function.DeadLetterConfig resource property to the template.
The dead letter queue: https://docs.aws.amazon.com/lambda/latest/dg/dlq.html for failed asynchronous invocations.

## SYNTAX

```
Add-VSLambdaFunctionDeadLetterConfig [[-TargetArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Function.DeadLetterConfig resource property to the template.
The dead letter queue: https://docs.aws.amazon.com/lambda/latest/dg/dlq.html for failed asynchronous invocations.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -TargetArn
The Amazon Resource Name ARN of an Amazon SQS queue or Amazon SNS topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html#cfn-lambda-function-deadletterconfig-targetarn
PrimitiveType: String
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

### Vaporshell.Resource.Lambda.Function.DeadLetterConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html)

