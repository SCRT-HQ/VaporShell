# Add-VSTransferServerIdentityProviderDetails

## SYNOPSIS
Adds an AWS::Transfer::Server.IdentityProviderDetails resource property to the template.
Required when IdentityProviderType is set to API_GATEWAY.
Accepts an array containing all of the information required to call a customer-supplied authentication API, including the API Gateway URL.
Not required when IdentityProviderType is set to SERVICE_MANAGED.

## SYNTAX

```
Add-VSTransferServerIdentityProviderDetails [-InvocationRole] <Object> [-Url] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Transfer::Server.IdentityProviderDetails resource property to the template.
Required when IdentityProviderType is set to API_GATEWAY.
Accepts an array containing all of the information required to call a customer-supplied authentication API, including the API Gateway URL.
Not required when IdentityProviderType is set to SERVICE_MANAGED.

## PARAMETERS

### -InvocationRole
Provides the type of InvocationRole used to authenticate the user account.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-invocationrole
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

### -Url
Contains the location of the service endpoint used to authenticate users.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-url
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Transfer.Server.IdentityProviderDetails
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html)

