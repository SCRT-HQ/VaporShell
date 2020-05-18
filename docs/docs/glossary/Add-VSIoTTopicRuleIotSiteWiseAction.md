# Add-VSIoTTopicRuleIotSiteWiseAction

## SYNOPSIS
Adds an AWS::IoT::TopicRule.IotSiteWiseAction resource property to the template.
Describes an action to send data from an MQTT message that triggered the rule to AWS IoT SiteWise asset properties.

## SYNTAX

```
Add-VSIoTTopicRuleIotSiteWiseAction [-PutAssetPropertyValueEntries] <Object> [-RoleArn] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.IotSiteWiseAction resource property to the template.
Describes an action to send data from an MQTT message that triggered the rule to AWS IoT SiteWise asset properties.

## PARAMETERS

### -PutAssetPropertyValueEntries
A list of asset property value entries.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-putassetpropertyvalueentries
DuplicatesAllowed: False
ItemType: PutAssetPropertyValueEntry
Type: List
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

### -RoleArn
The ARN of the role that grants AWS IoT permission to send an asset property value to AWS IoTSiteWise.
"Action": "iotsitewise:BatchPutAssetPropertyValue".
The trust policy can restrict access to specific asset hierarchy paths.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-rolearn
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

### Vaporshell.Resource.IoT.TopicRule.IotSiteWiseAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html)

