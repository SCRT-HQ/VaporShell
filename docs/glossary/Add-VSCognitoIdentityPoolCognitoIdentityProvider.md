# Add-VSCognitoIdentityPoolCognitoIdentityProvider

## SYNOPSIS
Adds an AWS::Cognito::IdentityPool.CognitoIdentityProvider resource property to the template.
CognitoIdentityProvider is a property of the AWS::Cognito::IdentityPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html resource that represents an Amazon Cognito user pool and its client ID.

## SYNTAX

```
Add-VSCognitoIdentityPoolCognitoIdentityProvider [[-ServerSideTokenCheck] <Boolean>] [[-ProviderName] <Object>]
 [[-ClientId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::IdentityPool.CognitoIdentityProvider resource property to the template.
CognitoIdentityProvider is a property of the AWS::Cognito::IdentityPool: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html resource that represents an Amazon Cognito user pool and its client ID.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServerSideTokenCheck
TRUE if server-side token validation is enabled for the identity provider's token.
Once you set ServerSideTokenCheck to TRUE for an identity pool, that identity pool will check with the integrated user pools to make sure that the user has not been globally signed out or deleted before the identity pool provides an OIDC token or AWS credentials for the user.
If the user is signed out or deleted, the identity pool will return a 400 Not Authorized error.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-serversidetokencheck
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProviderName
The provider name for an Amazon Cognito user pool.
For example, cognito-idp.us-east-2.amazonaws.com/us-east-2_123456789.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-providername
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

### -ClientId
The client ID for the Amazon Cognito user pool.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-clientid
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.IdentityPool.CognitoIdentityProvider
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html)

