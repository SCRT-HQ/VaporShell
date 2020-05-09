# Add-VSEMRClusterInstanceGroupConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.InstanceGroupConfig resource property to the template.
Use InstanceGroupConfig to define instance groups for an EMR cluster.
A cluster can not use both instance groups and instance fleets.
For more information, see Create a Cluster with Instance Fleets or Uniform Instance Groups: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html in the *Amazon EMR Management Guide*.

## SYNTAX

```
Add-VSEMRClusterInstanceGroupConfig [[-AutoScalingPolicy] <Object>] [[-BidPrice] <Object>]
 [[-Configurations] <Object>] [[-EbsConfiguration] <Object>] [-InstanceCount] <Object> [-InstanceType] <Object>
 [[-Market] <Object>] [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.InstanceGroupConfig resource property to the template.
Use InstanceGroupConfig to define instance groups for an EMR cluster.
A cluster can not use both instance groups and instance fleets.
For more information, see Create a Cluster with Instance Fleets or Uniform Instance Groups: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html in the *Amazon EMR Management Guide*.

## PARAMETERS

### -AutoScalingPolicy
AutoScalingPolicy is a subproperty of the InstanceGroupConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html property type that specifies the constraints and rules of an automatic scaling policy in Amazon EMR.
The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
Only core and task instance groups can use automatic scaling policies.
For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-autoscalingpolicy
Type: AutoScalingPolicy
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

### -BidPrice
The bid price for each EC2 Spot instance type as defined by InstanceType.
Expressed in USD.
If neither BidPrice nor BidPriceAsPercentageOfOnDemandPrice is provided, BidPriceAsPercentageOfOnDemandPrice defaults to 100%.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-bidprice
PrimitiveType: String
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

### -Configurations
Amazon EMR releases 4.x or later.
The list of configurations supplied for an EMR cluster instance group.
You can specify a separate configuration for each instance group master, core, and task.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-configurations
DuplicatesAllowed: False
ItemType: Configuration
Type: List
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

### -EbsConfiguration
EBS configurations that will be attached to each EC2 instance in the instance group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-ebsconfiguration
Type: EbsConfiguration
UpdateType: Immutable

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

### -InstanceCount
Target number of instances for the instance group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-instancecount
PrimitiveType: Integer
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

### -InstanceType
The EC2 instance type for all instances in the instance group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-instancetype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Market
Market type of the EC2 instances used to create a cluster node.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-market
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Friendly name given to the instance group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-name
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.InstanceGroupConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html)

