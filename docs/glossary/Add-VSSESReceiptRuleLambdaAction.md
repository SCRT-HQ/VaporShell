# Add-VSSESReceiptRuleLambdaAction

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.LambdaAction resource property to the template.
When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

## SYNTAX

```
Add-VSSESReceiptRuleLambdaAction [-FunctionArn] <Object> [[-TopicArn] <Object>] [[-InvocationType] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.LambdaAction resource property to the template.
When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.

To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources.
For information about giving permissions, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html.

For information about using AWS Lambda actions in receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html.

## PARAMETERS

### -FunctionArn
The Amazon Resource Name ARN of the AWS Lambda function.
An example of an AWS Lambda function ARN is arn:aws:lambda:us-west-2:account-id:function:MyFunction.
For more information about AWS Lambda, see the AWS Lambda Developer Guide: https://docs.aws.amazon.com/lambda/latest/dg/welcome.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-functionarn
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

### -TopicArn
The Amazon Resource Name ARN of the Amazon SNS topic to notify when the Lambda action is executed.
You can find the ARN of a topic by using the ListTopics: https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html operation in the Amazon SNS API.
For more information about Amazon SNS topics, see the Amazon SNS Developer Guide: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-topicarn
PrimitiveType: String
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

### -InvocationType
The invocation type of the AWS Lambda function.
An invocation type of RequestResponse means that the execution of the function immediately results in a response, and a value of Event means that the function is invoked asynchronously.
The default value is Event.
For information about AWS Lambda invocation types, see the AWS Lambda Developer Guide: https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html.
There is a 30-second timeout on RequestResponse invocations.
You should use Event invocation in most cases.
Use RequestResponse only when you want to make a mail flow decision, such as whether to stop the receipt rule or the receipt rule set.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-invocationtype
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ReceiptRule.LambdaAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html)

