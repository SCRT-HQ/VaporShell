# Add-VSIoTTopicRulePutAssetPropertyValueEntry

## SYNOPSIS
Adds an AWS::IoT::TopicRule.PutAssetPropertyValueEntry resource property to the template.
An asset property value entry containing the following information.

## SYNTAX

```
Add-VSIoTTopicRulePutAssetPropertyValueEntry [[-AssetId] <Object>] [[-EntryId] <Object>]
 [[-PropertyAlias] <Object>] [[-PropertyId] <Object>] [-PropertyValues] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.PutAssetPropertyValueEntry resource property to the template.
An asset property value entry containing the following information.

## PARAMETERS

### -AssetId
The ID of the AWS IoT SiteWise asset.
You must specify either a propertyAlias or both an aliasId and a propertyId.
Accepts substitution templates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-assetid
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

### -EntryId
Optional.
A unique identifier for this entry that you can define to better track which message caused an error in case of failure.
Accepts substitution templates.
Defaults to a new UUID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-entryid
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

### -PropertyAlias
The name of the property alias associated with your asset property.
You must specify either a propertyAlias or both an aliasId and a propertyId.
Accepts substitution templates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyalias
PrimitiveType: String
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

### -PropertyId
The ID of the asset's property.
You must specify either a propertyAlias or both an aliasId and a propertyId.
Accepts substitution templates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyid
PrimitiveType: String
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

### -PropertyValues
A list of property values to insert that each contain timestamp, quality, and value TQV information.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyvalues
DuplicatesAllowed: False
ItemType: AssetPropertyValue
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.PutAssetPropertyValueEntry
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html)

