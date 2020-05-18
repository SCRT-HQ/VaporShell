# Add-VSCognitoUserPoolAccountRecoverySetting

## SYNOPSIS
Adds an AWS::Cognito::UserPool.AccountRecoverySetting resource property to the template.
Use this setting to define which verified available method a user can use to recover their password when they call ForgotPassword.
It allows you to define a preferred method when a user has more than one method available.
With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled.
In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.

## SYNTAX

```
Add-VSCognitoUserPoolAccountRecoverySetting [[-RecoveryMechanisms] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPool.AccountRecoverySetting resource property to the template.
Use this setting to define which verified available method a user can use to recover their password when they call ForgotPassword.
It allows you to define a preferred method when a user has more than one method available.
With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled.
In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.

## PARAMETERS

### -RecoveryMechanisms
The list of RecoveryOptionTypes.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-accountrecoverysetting.html#cfn-cognito-userpool-accountrecoverysetting-recoverymechanisms
ItemType: RecoveryOption
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

### Vaporshell.Resource.Cognito.UserPool.AccountRecoverySetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-accountrecoverysetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-accountrecoverysetting.html)

