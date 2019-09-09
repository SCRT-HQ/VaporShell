# Add-VSSESReceiptRuleAction

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.Action resource property to the template.
An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own.
An instance of this data type can represent only one action.

## SYNTAX

```
Add-VSSESReceiptRuleAction [[-BounceAction] <Object>] [[-S3Action] <Object>] [[-StopAction] <Object>]
 [[-SNSAction] <Object>] [[-WorkmailAction] <Object>] [[-AddHeaderAction] <Object>] [[-LambdaAction] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.Action resource property to the template.
An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own.
An instance of this data type can represent only one action.

For information about setting up receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BounceAction
Rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service Amazon SNS.

Type: BounceAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-bounceaction
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

### -S3Action
Saves the received message to an Amazon Simple Storage Service Amazon S3 bucket and, optionally, publishes a notification to Amazon SNS.

Type: S3Action
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-s3action
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

### -StopAction
Terminates the evaluation of the receipt rule set and optionally publishes a notification to Amazon SNS.

Type: StopAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-stopaction
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

### -SNSAction
Publishes the email content within a notification to Amazon SNS.

Type: SNSAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-snsaction
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

### -WorkmailAction
Calls Amazon WorkMail and, optionally, publishes a notification to Amazon SNS.

Type: WorkmailAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-workmailaction
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

### -AddHeaderAction
Adds a header to the received email.

Type: AddHeaderAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-addheaderaction
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

### -LambdaAction
Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.

Type: LambdaAction
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-lambdaaction
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ReceiptRule.Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html)

