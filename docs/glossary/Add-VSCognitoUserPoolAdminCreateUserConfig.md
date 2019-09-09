# Add-VSCognitoUserPoolAdminCreateUserConfig

## SYNOPSIS
Adds an AWS::Cognito::UserPool.AdminCreateUserConfig resource property to the template.
AdminCreateUserConfig is a property of the AWS::Cognito::UserPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html resource.
The AdminCreateUserConfig property configures the AdminCreateUser requests for an Amazon Cognito User Pool.

## SYNTAX

```
Add-VSCognitoUserPoolAdminCreateUserConfig [[-InviteMessageTemplate] <Object>]
 [[-UnusedAccountValidityDays] <Int32>] [[-AllowAdminCreateUserOnly] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPool.AdminCreateUserConfig resource property to the template.
AdminCreateUserConfig is a property of the AWS::Cognito::UserPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html resource.
The AdminCreateUserConfig property configures the AdminCreateUser requests for an Amazon Cognito User Pool.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InviteMessageTemplate
The message template to be used for the welcome message to new users.
See also Customizing User Invitation Messages: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization.

Type: InviteMessageTemplate
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate
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

### -UnusedAccountValidityDays
The user account expiration limit, in days, after which the account is no longer usable.
To reset the account after that time limit, you must call AdminCreateUser again, specifying "RESEND" for the MessageAction parameter.
The default value for this parameter is 7.
If you set a value for TemporaryPasswordValidityDays in PasswordPolicy, that value will be used and UnusedAccountValidityDays will be deprecated for that user pool.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowAdminCreateUserOnly
Set to True if only the administrator is allowed to create user profiles.
Set to False if users can sign themselves up via an app.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.UserPool.AdminCreateUserConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html)

