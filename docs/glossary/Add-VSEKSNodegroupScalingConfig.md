# Add-VSEKSNodegroupScalingConfig

## SYNOPSIS
Adds an AWS::EKS::Nodegroup.ScalingConfig resource property to the template.
An object representing the scaling configuration details for the Auto Scaling group that is associated with your node group.

## SYNTAX

```
Add-VSEKSNodegroupScalingConfig [[-MinSize] <Object>] [[-DesiredSize] <Object>] [[-MaxSize] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EKS::Nodegroup.ScalingConfig resource property to the template.
An object representing the scaling configuration details for the Auto Scaling group that is associated with your node group.

## PARAMETERS

### -MinSize
The minimum number of worker nodes that the managed node group can scale in to.
This number must be greater than zero.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-minsize
PrimitiveType: Double
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

### -DesiredSize
The current number of worker nodes that the managed node group should maintain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-desiredsize
PrimitiveType: Double
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

### -MaxSize
The maximum number of worker nodes that the managed node group can scale out to.
Managed node groups can support up to 100 nodes by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-maxsize
PrimitiveType: Double
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EKS.Nodegroup.ScalingConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html)

