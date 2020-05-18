# Add-VSElasticsearchDomainCognitoOptions

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.CognitoOptions resource property to the template.
Configures Amazon ES to use Amazon Cognito authentication for Kibana.

## SYNTAX

```
Add-VSElasticsearchDomainCognitoOptions [[-Enabled] <Object>] [[-IdentityPoolId] <Object>]
 [[-RoleArn] <Object>] [[-UserPoolId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.CognitoOptions resource property to the template.
Configures Amazon ES to use Amazon Cognito authentication for Kibana.

## PARAMETERS

### -Enabled
Whether to enable or disable Amazon Cognito authentication for Kibana.
See Amazon Cognito Authentication for Kibana: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-enabled
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

### -IdentityPoolId
The Amazon Cognito identity pool ID that you want Amazon ES to use for Kibana authentication.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-identitypoolid
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

### -RoleArn
The AmazonESCognitoAccess role that allows Amazon ES to configure your user pool and identity pool.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-rolearn
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

### -UserPoolId
The Amazon Cognito user pool ID that you want Amazon ES to use for Kibana authentication.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-userpoolid
PrimitiveType: String
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

### Vaporshell.Resource.Elasticsearch.Domain.CognitoOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html)

