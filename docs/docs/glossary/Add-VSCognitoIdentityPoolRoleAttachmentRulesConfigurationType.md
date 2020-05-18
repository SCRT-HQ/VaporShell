# Add-VSCognitoIdentityPoolRoleAttachmentRulesConfigurationType

## SYNOPSIS
Adds an AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType resource property to the template.
RulesConfigurationType is a subproperty of the RoleMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html property that defines the rules to be used for mapping users to roles.

## SYNTAX

```
Add-VSCognitoIdentityPoolRoleAttachmentRulesConfigurationType [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType resource property to the template.
RulesConfigurationType is a subproperty of the RoleMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html property that defines the rules to be used for mapping users to roles.

## PARAMETERS

### -Rules
The rules.
You can specify up to 25 rules per identity provider.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html#cfn-cognito-identitypoolroleattachment-rulesconfigurationtype-rules
ItemType: MappingRule
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.IdentityPoolRoleAttachment.RulesConfigurationType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html)

