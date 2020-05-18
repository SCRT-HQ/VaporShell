# Add-VSCognitoUserPoolUsernameConfiguration

## SYNOPSIS
Adds an AWS::Cognito::UserPool.UsernameConfiguration resource property to the template.
The UsernameConfiguration property type specifies case sensitivity on the username input for the selected sign-in option.

## SYNTAX

```
Add-VSCognitoUserPoolUsernameConfiguration [[-CaseSensitive] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPool.UsernameConfiguration resource property to the template.
The UsernameConfiguration property type specifies case sensitivity on the username input for the selected sign-in option.

## PARAMETERS

### -CaseSensitive
Specifies whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.
Valid values include:
+  ** True **: Enables case sensitivity for all username input.
When this option is set to True, users must sign in using the exact capitalization of their given username.
For example, "UserName".
This is the default value.
+  ** False **: Enables case insensitivity for all username input.
For example, when this option is set to False, users will be able to sign in using either "username" or "Username".
This option also enables both preferred_username and email alias to be case insensitive, in addition to the username attribute.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html#cfn-cognito-userpool-usernameconfiguration-casesensitive
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.UserPool.UsernameConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html)

