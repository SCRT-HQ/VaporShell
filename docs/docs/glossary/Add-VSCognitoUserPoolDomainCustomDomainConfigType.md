# Add-VSCognitoUserPoolDomainCustomDomainConfigType

## SYNOPSIS
Adds an AWS::Cognito::UserPoolDomain.CustomDomainConfigType resource property to the template.
The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.

## SYNTAX

```
Add-VSCognitoUserPoolDomainCustomDomainConfigType [[-CertificateArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPoolDomain.CustomDomainConfigType resource property to the template.
The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.

## PARAMETERS

### -CertificateArn
The Amazon Resource Name ARN of an AWS Certificate Manager SSL certificate.
You use this certificate for the subdomain of your custom domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html#cfn-cognito-userpooldomain-customdomainconfigtype-certificatearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.UserPoolDomain.CustomDomainConfigType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html)

