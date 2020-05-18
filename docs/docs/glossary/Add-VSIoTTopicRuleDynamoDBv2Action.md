# Add-VSIoTTopicRuleDynamoDBv2Action

## SYNOPSIS
Adds an AWS::IoT::TopicRule.DynamoDBv2Action resource property to the template.
Describes an action to write to a DynamoDB table.

## SYNTAX

```
Add-VSIoTTopicRuleDynamoDBv2Action [[-PutItem] <Object>] [[-RoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.DynamoDBv2Action resource property to the template.
Describes an action to write to a DynamoDB table.

This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.

## PARAMETERS

### -PutItem
Specifies the DynamoDB table to which the message data will be written.
For example:
{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }
Each attribute in the message payload will be written to a separate column in the DynamoDB database.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-putitem
Type: PutItemInput
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

### -RoleArn
The ARN of the IAM role that grants access to the DynamoDB table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-rolearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.DynamoDBv2Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html)

