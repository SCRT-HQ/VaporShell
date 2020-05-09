# Add-VSEMRClusterInstanceFleetProvisioningSpecifications

## SYNOPSIS
Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template.
InstanceFleetProvisioningSpecification is a subproperty of InstanceFleetConfig.
InstanceFleetProvisioningSpecification defines the launch specification for Spot instances in an instance fleet, which determines the defined duration and provisioning timeout behavior for Spot instances.

## SYNTAX

```
Add-VSEMRClusterInstanceFleetProvisioningSpecifications [-SpotSpecification] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template.
InstanceFleetProvisioningSpecification is a subproperty of InstanceFleetConfig.
InstanceFleetProvisioningSpecification defines the launch specification for Spot instances in an instance fleet, which determines the defined duration and provisioning timeout behavior for Spot instances.

**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

## PARAMETERS

### -SpotSpecification
The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-spotspecification
Type: SpotProvisioningSpecification
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html)

