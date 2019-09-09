# Add-VSIoTTopicRuleSnsAction

## SYNOPSIS
Adds an AWS::IoT::TopicRule.SnsAction resource property to the template.
Describes an action to publish to an Amazon SNS topic.

## SYNTAX

```
Add-VSIoTTopicRuleSnsAction [[-MessageFormat] <Object>] [-RoleArn] <Object> [-TargetArn] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.SnsAction resource property to the template.
Describes an action to publish to an Amazon SNS topic.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MessageFormat
Optional The message format of the message to publish.
Accepted values are "JSON" and "RAW".
The default value of the attribute is "RAW".
SNS uses this setting to determine if the payload should be parsed and relevant platform-specific bits of the payload should be extracted.
For more information, see Amazon SNS Message and JSON Formats: https://docs.aws.amazon.com/sns/latest/dg/json-formats.html in the *Amazon Simple Notification Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-messageformat
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

### -RoleArn
The ARN of the IAM role that grants access.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-rolearn
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

### -TargetArn
The ARN of the SNS topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-targetarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.SnsAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html)

