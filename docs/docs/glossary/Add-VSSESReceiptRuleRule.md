# Add-VSSESReceiptRuleRule

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.Rule resource property to the template.
Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.

## SYNTAX

```
Add-VSSESReceiptRuleRule [[-ScanEnabled] <Object>] [[-Recipients] <Object>] [[-Actions] <Object>]
 [[-Enabled] <Object>] [[-Name] <Object>] [[-TlsPolicy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.Rule resource property to the template.
Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.

Each receipt rule defines a set of email addresses or domains that it applies to.
If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.

For information about setting up receipt rules, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html.

## PARAMETERS

### -ScanEnabled
If true, then messages that this receipt rule applies to are scanned for spam and viruses.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-scanenabled
PrimitiveType: Boolean
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

### -Recipients
Contains the recipient domains and email addresses that the receipt rule applies to.
If this field isn't specified, this rule matches all recipients on all verified domains.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-recipients
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

### -Actions
An ordered list of actions to perform on messages that match at least one of the recipient email addresses or domains specified in the receipt rule.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-actions
ItemType: Action
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

### -Enabled
If true, the receipt rule is active.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-enabled
PrimitiveType: Boolean
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

### -Name
The name of the receipt rule.
The name must:
+ This value can only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ Start and end with a letter or number.
+ Contain fewer than 64 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-name
PrimitiveType: String
UpdateType: Immutable

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

### -TlsPolicy
Specifies whether Amazon SES should require that incoming email is delivered over a connection encrypted with Transport Layer Security TLS.
If this parameter is set to Require, Amazon SES bounces emails that are not received over TLS.
The default is Optional.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-tlspolicy
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ReceiptRule.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html)

