# Add-VSSESReceiptRuleAddHeaderAction

## SYNOPSIS
Adds an AWS::SES::ReceiptRule.AddHeaderAction resource property to the template.
When included in a receipt rule, this action adds a header to the received email.

## SYNTAX

```
Add-VSSESReceiptRuleAddHeaderAction [-HeaderValue] <Object> [-HeaderName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptRule.AddHeaderAction resource property to the template.
When included in a receipt rule, this action adds a header to the received email.

For information about adding a header using a receipt rule, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html.

## PARAMETERS

### -HeaderValue
The content that you want to include in the header.
This value can contain up to 2048 characters.
It can't contain newline n or carraige return r characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headervalue
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

### -HeaderName
The name of the header that you want to add to the incoming message.
The name has to contain at least one character, and can contain up to 50 characters.
It can only consist of alphanumeric a-z, A-Z, 0-9 characters and dashes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headername
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

### Vaporshell.Resource.SES.ReceiptRule.AddHeaderAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html)

