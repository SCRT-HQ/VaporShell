# Add-VSCognitoIdentityPoolRoleAttachmentRoleMapping

## SYNOPSIS
Adds an AWS::Cognito::IdentityPoolRoleAttachment.RoleMapping resource property to the template.
RoleMapping is a property of the AWS::Cognito::IdentityPoolRoleAttachment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html resource that defines the role-mapping attributes of an Amazon Cognito identity pool.

## SYNTAX

```
Add-VSCognitoIdentityPoolRoleAttachmentRoleMapping [-Type] <Object> [[-AmbiguousRoleResolution] <Object>]
 [[-RulesConfiguration] <Object>] [[-IdentityProvider] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::IdentityPoolRoleAttachment.RoleMapping resource property to the template.
RoleMapping is a property of the AWS::Cognito::IdentityPoolRoleAttachment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html resource that defines the role-mapping attributes of an Amazon Cognito identity pool.

## PARAMETERS

### -Type
The role-mapping type.
Token uses cognito:roles and cognito:preferred_role claims from the Amazon Cognito identity provider token to map groups to roles.
Rules attempts to match claims from the token to map to a role.
Valid values are Token or Rules.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-type
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

### -AmbiguousRoleResolution
Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type.
If you specify Token or Rules as the Type, AmbiguousRoleResolution is required.
Valid values are AuthenticatedRole or Deny.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-ambiguousroleresolution
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

### -RulesConfiguration
The rules to be used for mapping users to roles.
If you specify "Rules" as the role-mapping type, RulesConfiguration is required.

Type: RulesConfigurationType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-rulesconfiguration
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

### -IdentityProvider
Identifier for the identity provider for which the role is mapped.
For example: "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id http://cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".
This is the identity provider that is used by the user for authentication.
If the identity provider property isn't provided, the key of the entry in the RoleMappings map is used as the identity provider.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-identityprovider
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

### Vaporshell.Resource.Cognito.IdentityPoolRoleAttachment.RoleMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html)

