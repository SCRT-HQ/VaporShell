# Add-VSIoTTopicRuleHttpAction

## SYNOPSIS
Adds an AWS::IoT::TopicRule.HttpAction resource property to the template.
Send data to an HTTPS endpoint.

## SYNTAX

```
Add-VSIoTTopicRuleHttpAction [[-Auth] <Object>] [[-ConfirmationUrl] <Object>] [[-Headers] <Object>]
 [-Url] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.HttpAction resource property to the template.
Send data to an HTTPS endpoint.

## PARAMETERS

### -Auth
The authentication method to use when sending data to an HTTPS endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-auth
Type: HttpAuthorization
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

### -ConfirmationUrl
The URL to which AWS IoT sends a confirmation message.
The value of the confirmation URL must be a prefix of the endpoint URL.
If you do not specify a confirmation URL AWS IoT uses the endpoint URL as the confirmation URL.
If you use substitution templates in the confirmationUrl, you must create and enable topic rule destinations that match each possible value of the substitution template before traffic is allowed to your endpoint URL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-confirmationurl
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

### -Headers
The HTTP headers to send with the message data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-headers
DuplicatesAllowed: False
ItemType: HttpActionHeader
Type: List
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

### -Url
The endpoint URL.
If substitution templates are used in the URL, you must also specify a confirmationUrl.
If this is a new destination, a new TopicRuleDestination is created if possible.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-url
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.HttpAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html)

