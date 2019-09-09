# Add-VSEventsRuleTarget

## SYNOPSIS
Adds an AWS::Events::Rule.Target resource property to the template.
The Target property type specifies a target, such as an AWS Lambda function or an Amazon Kinesis data stream, that CloudWatch Events invokes when a rule is triggered.

## SYNTAX

```
Add-VSEventsRuleTarget [-Arn] <Object> [[-EcsParameters] <Object>] [-Id] <Object> [[-Input] <Object>]
 [[-InputPath] <Object>] [[-InputTransformer] <Object>] [[-KinesisParameters] <Object>] [[-RoleArn] <Object>]
 [[-RunCommandParameters] <Object>] [[-SqsParameters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.Target resource property to the template.
The Target property type specifies a target, such as an AWS Lambda function or an Amazon Kinesis data stream, that CloudWatch Events invokes when a rule is triggered.

Targets property of the AWS::Events::Rule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html resource contains a list of one or more Target property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Arn
The Amazon Resource Name ARN of the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn
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

### -EcsParameters
Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task.
For more information about Amazon ECS tasks, see Task Definitions : https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html in the *Amazon EC2 Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-ecsparameters
Type: EcsParameters
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

### -Id
The ID of the target.
It can include alphanumeric characters, periods ., hyphens -, and underscores _.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Input
Valid JSON text passed to the target.
If you use this property, nothing from the event text itself is passed to the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input
PrimitiveType: String
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

### -InputPath
When you don't want to pass the entire matched event, InputPath  describes which part of the event to pass to the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath
PrimitiveType: String
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

### -InputTransformer
Settings to enable you to provide custom input to a target based on certain event data.
You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputtransformer
Type: InputTransformer
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

### -KinesisParameters
The custom parameter you can use to control the shard assignment, when the target is a Kinesis data stream.
If you do not include this parameter, the default is to use the eventId as the partition key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-kinesisparameters
Type: KinesisParameters
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleArn
The Amazon Resource Name ARN of the IAM role to be used for this target when the rule is triggered.
If one rule triggers multiple targets, you can use a different IAM role for each target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunCommandParameters
Parameters used when you are using the rule to invoke Amazon EC2 Run Command.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-runcommandparameters
Type: RunCommandParameters
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SqsParameters
Contains the message group ID to use when the target is a FIFO queue.
If you specify an SQS FIFO queue as a target, the queue must have content-based deduplication enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sqsparameters
Type: SqsParameters
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.Rule.Target
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html)

