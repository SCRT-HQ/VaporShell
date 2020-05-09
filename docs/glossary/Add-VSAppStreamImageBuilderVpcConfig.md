# Add-VSAppStreamImageBuilderVpcConfig

## SYNOPSIS
Adds an AWS::AppStream::ImageBuilder.VpcConfig resource property to the template.
The VPC configuration for the image builder.

## SYNTAX

```
Add-VSAppStreamImageBuilderVpcConfig [[-SecurityGroupIds] <Object>] [[-SubnetIds] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppStream::ImageBuilder.VpcConfig resource property to the template.
The VPC configuration for the image builder.

## PARAMETERS

### -SecurityGroupIds
The identifiers of the security groups for the image builder.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-securitygroupids
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

### -SubnetIds
The identifier of the subnet to which a network interface is attached from the image builder instance.
An image builder instance can use one subnet.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-subnetids
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

### Vaporshell.Resource.AppStream.ImageBuilder.VpcConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html)

