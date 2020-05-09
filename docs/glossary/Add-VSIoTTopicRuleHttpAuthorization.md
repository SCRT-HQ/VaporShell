# Add-VSIoTTopicRuleHttpAuthorization

## SYNOPSIS
Adds an AWS::IoT::TopicRule.HttpAuthorization resource property to the template.
The authorization method used to send messages.

## SYNTAX

```
Add-VSIoTTopicRuleHttpAuthorization [[-Sigv4] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.HttpAuthorization resource property to the template.
The authorization method used to send messages.

## PARAMETERS

### -Sigv4
Use Sig V4 authorization.
For more information, see Signature Version 4 Signing Process: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html#cfn-iot-topicrule-httpauthorization-sigv4
Type: SigV4Authorization
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

### Vaporshell.Resource.IoT.TopicRule.HttpAuthorization
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html)

