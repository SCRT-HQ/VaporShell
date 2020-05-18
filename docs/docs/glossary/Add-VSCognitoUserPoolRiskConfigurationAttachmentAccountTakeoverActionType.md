# Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType

## SYNOPSIS
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType resource property to the template.
Account takeover action type.

## SYNTAX

```
Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType [-Notify] <Object>
 [-EventAction] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType resource property to the template.
Account takeover action type.

## PARAMETERS

### -Notify
Flag specifying whether to send a notification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-notify
PrimitiveType: Boolean
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

### -EventAction
The event action.
+  BLOCK Choosing this action will block the request.
+  MFA_IF_CONFIGURED Throw MFA challenge if user has configured it, else allow the request.
+  MFA_REQUIRED Throw MFA challenge if user has configured it, else block the request.
+  NO_ACTION Allow the user sign-in.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-eventaction
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

### Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html)

