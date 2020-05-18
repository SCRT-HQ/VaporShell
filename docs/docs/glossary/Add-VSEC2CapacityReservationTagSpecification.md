# Add-VSEC2CapacityReservationTagSpecification

## SYNOPSIS
Adds an AWS::EC2::CapacityReservation.TagSpecification resource property to the template.
An array of key-value pairs to apply to this resource.

## SYNTAX

```
Add-VSEC2CapacityReservationTagSpecification [[-ResourceType] <Object>] [[-Tags] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::CapacityReservation.TagSpecification resource property to the template.
An array of key-value pairs to apply to this resource.

For more information, see Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

## PARAMETERS

### -ResourceType
The type of resource to tag.
Specify capacity-reservation.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-resourcetype
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

### -Tags
The tags to apply to the resource.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-tags
ItemType: Tag
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

### Vaporshell.Resource.EC2.CapacityReservation.TagSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html)

