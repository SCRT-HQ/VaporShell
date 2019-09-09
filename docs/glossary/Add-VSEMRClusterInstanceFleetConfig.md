# Add-VSEMRClusterInstanceFleetConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.InstanceFleetConfig resource property to the template.
Use InstanceFleetConfig to define instance fleets for an EMR cluster.
A cluster can not use both instance fleets and instance groups.
For more information, see Configure Instance Fleets: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html in the *Amazon EMR Management Guide*.

## SYNTAX

```
Add-VSEMRClusterInstanceFleetConfig [[-InstanceTypeConfigs] <Object>] [[-LaunchSpecifications] <Object>]
 [[-Name] <Object>] [[-TargetOnDemandCapacity] <Int32>] [[-TargetSpotCapacity] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.InstanceFleetConfig resource property to the template.
Use InstanceFleetConfig to define instance fleets for an EMR cluster.
A cluster can not use both instance fleets and instance groups.
For more information, see Configure Instance Fleets: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html in the *Amazon EMR Management Guide*.

**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InstanceTypeConfigs
The instance type configurations that define the EC2 instances in the instance fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-instancetypeconfigs
DuplicatesAllowed: False
ItemType: InstanceTypeConfig
Type: List
UpdateType: Immutable

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

### -LaunchSpecifications
The launch specification for the instance fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-launchspecifications
Type: InstanceFleetProvisioningSpecifications
UpdateType: Immutable

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

### -Name
The friendly name of the instance fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-name
PrimitiveType: String
UpdateType: Immutable

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

### -TargetOnDemandCapacity
The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
When the instance fleet launches, Amazon EMR tries to provision On-Demand instances as specified by InstanceTypeConfig.
Each instance configuration has a specified WeightedCapacity.
When an On-Demand instance is provisioned, the WeightedCapacity units count toward the target capacity.
Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage.
For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a WeightedCapacity of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.
If not specified or set to 0, only Spot instances are provisioned for the instance fleet using TargetSpotCapacity.
At least one of TargetSpotCapacity and TargetOnDemandCapacity should be greater than 0.
For a master instance fleet, only one of TargetSpotCapacity and TargetOnDemandCapacity can be specified, and its value must be 1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetondemandcapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetSpotCapacity
The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
When the instance fleet launches, Amazon EMR tries to provision Spot instances as specified by InstanceTypeConfig.
Each instance configuration has a specified WeightedCapacity.
When a Spot instance is provisioned, the WeightedCapacity units count toward the target capacity.
Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage.
For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a WeightedCapacity of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units.
If not specified or set to 0, only On-Demand instances are provisioned for the instance fleet.
At least one of TargetSpotCapacity and TargetOnDemandCapacity should be greater than 0.
For a master instance fleet, only one of TargetSpotCapacity and TargetOnDemandCapacity can be specified, and its value must be 1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetspotcapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.InstanceFleetConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html)

