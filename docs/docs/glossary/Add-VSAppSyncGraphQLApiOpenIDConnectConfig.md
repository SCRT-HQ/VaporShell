# Add-VSAppSyncGraphQLApiOpenIDConnectConfig

## SYNOPSIS
Adds an AWS::AppSync::GraphQLApi.OpenIDConnectConfig resource property to the template.
The OpenIDConnectConfig property type specifies the optional authorization configuration for using an OpenID Connect compliant service with your GraphQL endpoint for an AWS AppSync GraphQL API.

## SYNTAX

```
Add-VSAppSyncGraphQLApiOpenIDConnectConfig [[-Issuer] <Object>] [[-ClientId] <Object>] [[-AuthTTL] <Object>]
 [[-IatTTL] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::GraphQLApi.OpenIDConnectConfig resource property to the template.
The OpenIDConnectConfig property type specifies the optional authorization configuration for using an OpenID Connect compliant service with your GraphQL endpoint for an AWS AppSync GraphQL API.

OpenIDConnectConfig is a property of the AWS::AppSync::GraphQLApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html property type.

## PARAMETERS

### -Issuer
The issuer for the OpenID Connect configuration.
The issuer returned by discovery must exactly match the value of iss in the ID token.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-issuer
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

### -ClientId
The client identifier of the Relying party at the OpenID identity provider.
This identifier is typically obtained when the Relying party is registered with the OpenID identity provider.
You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-clientid
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

### -AuthTTL
The number of milliseconds a token is valid after being authenticated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-authttl
PrimitiveType: Double
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

### -IatTTL
The number of milliseconds a token is valid after being issued to a user.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-iatttl
PrimitiveType: Double
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppSync.GraphQLApi.OpenIDConnectConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html)

