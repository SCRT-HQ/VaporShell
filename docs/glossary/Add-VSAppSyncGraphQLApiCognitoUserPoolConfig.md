# Add-VSAppSyncGraphQLApiCognitoUserPoolConfig

## SYNOPSIS
Adds an AWS::AppSync::GraphQLApi.CognitoUserPoolConfig resource property to the template.
Describes an Amazon Cognito user pool configuration.

## SYNTAX

```
Add-VSAppSyncGraphQLApiCognitoUserPoolConfig [[-AppIdClientRegex] <Object>] [[-UserPoolId] <Object>]
 [[-AwsRegion] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppSync::GraphQLApi.CognitoUserPoolConfig resource property to the template.
Describes an Amazon Cognito user pool configuration.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AppIdClientRegex
A regular expression for validating the incoming Amazon Cognito user pool app client ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-appidclientregex
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

### -UserPoolId
The user pool ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-userpoolid
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

### -AwsRegion
The AWS Region in which the user pool was created.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-awsregion
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

### Vaporshell.Resource.AppSync.GraphQLApi.CognitoUserPoolConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html)

