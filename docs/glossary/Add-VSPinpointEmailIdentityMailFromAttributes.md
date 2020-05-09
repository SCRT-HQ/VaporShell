# Add-VSPinpointEmailIdentityMailFromAttributes

## SYNOPSIS
Adds an AWS::PinpointEmail::Identity.MailFromAttributes resource property to the template.
A list of attributes that are associated with a MAIL FROM domain.

## SYNTAX

```
Add-VSPinpointEmailIdentityMailFromAttributes [[-MailFromDomain] <Object>] [[-BehaviorOnMxFailure] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::Identity.MailFromAttributes resource property to the template.
A list of attributes that are associated with a MAIL FROM domain.

## PARAMETERS

### -MailFromDomain
The name of a domain that an email identity uses as a custom MAIL FROM domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-mailfromdomain
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

### -BehaviorOnMxFailure
The action that Amazon Pinpoint to takes if it can't read the required MX record for a custom MAIL FROM domain.
When you set this value to UseDefaultValue, Amazon Pinpoint uses *amazonses.com* as the MAIL FROM domain.
When you set this value to RejectMessage, Amazon Pinpoint returns a MailFromDomainNotVerified error, and doesn't attempt to deliver the email.
These behaviors are taken when the custom MAIL FROM domain configuration is in the Pending, Failed, and TemporaryFailure states.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-behavioronmxfailure
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.PinpointEmail.Identity.MailFromAttributes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html)

