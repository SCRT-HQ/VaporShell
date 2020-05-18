# Add-VSCognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType

## SYNOPSIS
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyConfigurationType resource property to the template.
The notify configuration type.

## SYNTAX

```
Add-VSCognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType [[-BlockEmail] <Object>]
 [[-ReplyTo] <Object>] [-SourceArn] <Object> [[-NoActionEmail] <Object>] [[-From] <Object>]
 [[-MfaEmail] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyConfigurationType resource property to the template.
The notify configuration type.

## PARAMETERS

### -BlockEmail
Email template used when a detected risk event is blocked.

Type: NotifyEmailType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-blockemail
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

### -ReplyTo
The destination to which the receiver of an email should reply to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-replyto
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

### -SourceArn
The Amazon Resource Name ARN of the identity that is associated with the sending authorization policy.
It permits Amazon Cognito to send for the email address specified in the From parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-sourcearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoActionEmail
The email template used when a detected risk event is allowed.

Type: NotifyEmailType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-noactionemail
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

### -From
The email address that is sending the email.
It must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-from
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaEmail
The MFA email template used when MFA is challenged as part of a detected risk.

Type: NotifyEmailType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-mfaemail
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.NotifyConfigurationType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html)

