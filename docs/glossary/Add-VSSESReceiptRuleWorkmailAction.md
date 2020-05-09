# Add-VSSESReceiptRuleWorkmailAction

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.WorkmailAction resource property to the template.
When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.
It usually isn't necessary to use this action directly, because Amazon WorkMail adds the rule automatically during its setup procedure.

## SYNTAX

```
Add-VSSESReceiptRuleWorkmailAction [[-TopicArn] <Object>] [-OrganizationArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.WorkmailAction resource property to the template.
When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS.
It usually isn't necessary to use this action directly, because Amazon WorkMail adds the rule automatically during its setup procedure.

For information using a receipt rule to call Amazon WorkMail, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html.

## PARAMETERS

### -TopicArn
The Amazon Resource Name ARN of the Amazon SNS topic to notify when the WorkMail action is called.
You can find the ARN of a topic by using the ListTopics: https://docs.aws.amazon.com/sns/latest/api/API_ListTopics.html operation in the Amazon SNS API.
For more information about Amazon SNS topics, see the Amazon SNS Developer Guide: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-topicarn
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

### -OrganizationArn
The Amazon Resource Name ARN of the Amazon WorkMail organization.
Amazon WorkMail ARNs use the following format:
arn:aws:workmail:\<region\>:\<awsAccountId\>:organization/\<workmailOrganizationId\>
You can find the ID of your organization by using the ListOrganizations: https://docs.aws.amazon.com/workmail/latest/APIReference/API_ListOrganizations.html operation in the Amazon WorkMail API.
Amazon WorkMail organization IDs begin with "m-", followed by a string of alphanumeric characters.
For information about Amazon WorkMail organizations, see the Amazon WorkMail Administrator Guide: https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-organizationarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ReceiptRule.WorkmailAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html)

