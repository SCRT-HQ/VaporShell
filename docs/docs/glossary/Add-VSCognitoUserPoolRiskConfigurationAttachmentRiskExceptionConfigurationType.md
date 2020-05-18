# Add-VSCognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType

## SYNOPSIS
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType resource property to the template.
The type of the configuration to override the risk decision.

## SYNTAX

```
Add-VSCognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType [[-BlockedIPRangeList] <Object>]
 [[-SkippedIPRangeList] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType resource property to the template.
The type of the configuration to override the risk decision.

## PARAMETERS

### -BlockedIPRangeList
Overrides the risk decision to always block the pre-authentication requests.
The IP range is in CIDR notation: a compact representation of an IP address and its associated routing prefix.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-blockediprangelist
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

### -SkippedIPRangeList
Risk detection is not performed on the IP addresses in the range list.
The IP range is in CIDR notation.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-skippediprangelist
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

### Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html)

