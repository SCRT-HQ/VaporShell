# Add-VSEC2ClientVpnEndpointTagSpecification

## SYNOPSIS
Adds an AWS::EC2::ClientVpnEndpoint.TagSpecification resource property to the template.
The tags to apply to a resource when the resource is being created.

## SYNTAX

```
Add-VSEC2ClientVpnEndpointTagSpecification [-ResourceType] <Object> [-Tags] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::ClientVpnEndpoint.TagSpecification resource property to the template.
The tags to apply to a resource when the resource is being created.

## PARAMETERS

### -ResourceType
The type of resource to tag.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-resourcetype
PrimitiveType: String
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

### -Tags
The tags to apply to the resource.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-tags
ItemType: Tag
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

### Vaporshell.Resource.EC2.ClientVpnEndpoint.TagSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html)

