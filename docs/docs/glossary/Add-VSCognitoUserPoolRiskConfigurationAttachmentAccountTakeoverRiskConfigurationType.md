# Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType

## SYNOPSIS
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType resource property to the template.
Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.

## SYNTAX

```
Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType [-Actions] <Object>
 [[-NotifyConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType resource property to the template.
Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.

## PARAMETERS

### -Actions
Account takeover risk configuration actions

Type: AccountTakeoverActionsType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-actions
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

### -NotifyConfiguration
The notify configuration used to construct email notifications.

Type: NotifyConfigurationType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-notifyconfiguration
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

### Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html)

