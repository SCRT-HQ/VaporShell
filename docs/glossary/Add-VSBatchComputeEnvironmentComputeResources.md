# Add-VSBatchComputeEnvironmentComputeResources

## SYNOPSIS
Adds an AWS::Batch::ComputeEnvironment.ComputeResources resource property to the template.
Details of the compute resources managed by the compute environment.
This parameter is required for managed compute environments.
For more information, see Compute Environments: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html in the *AWS Batch User Guide*.

## SYNTAX

```
Add-VSBatchComputeEnvironmentComputeResources [[-SpotIamFleetRole] <Object>] [-MaxvCpus] <Object>
 [[-BidPercentage] <Object>] [[-SecurityGroupIds] <Object>] [-Subnets] <Object> [-Type] <Object>
 [[-AllocationStrategy] <Object>] [-MinvCpus] <Object> [[-LaunchTemplate] <Object>] [[-ImageId] <Object>]
 [-InstanceRole] <Object> [-InstanceTypes] <Object> [[-Ec2KeyPair] <Object>] [[-PlacementGroup] <Object>]
 [[-Tags] <Object>] [[-DesiredvCpus] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::ComputeEnvironment.ComputeResources resource property to the template.
Details of the compute resources managed by the compute environment.
This parameter is required for managed compute environments.
For more information, see Compute Environments: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html in the *AWS Batch User Guide*.

## PARAMETERS

### -SpotIamFleetRole
The Amazon Resource Name ARN of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment.
This role is required if the allocation strategy set to BEST_FIT or if the allocation strategy is not specified.
For more information, see Amazon EC2 Spot Fleet Role: https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html in the *AWS Batch User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-spotiamfleetrole
PrimitiveType: String
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

### -MaxvCpus
The maximum number of Amazon EC2 vCPUs that an environment can reach.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-maxvcpus
PrimitiveType: Integer
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

### -BidPercentage
The maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched.
For example, if your maximum percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that Amazon EC2 instance.
You always pay the lowest market price and never more than your maximum percentage.
If you leave this field empty, the default value is 100% of the On-Demand price.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-bidpercentage
PrimitiveType: Integer
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

### -SecurityGroupIds
The Amazon EC2 security groups associated with instances launched in the compute environment.
One or more security groups must be specified, either in securityGroupIds or using a launch template referenced in launchTemplate.
If security groups are specified using both securityGroupIds and launchTemplate, the values in securityGroupIds will be used.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-securitygroupids
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

### -Subnets
The VPC subnets into which the compute resources are launched.
For more information, see VPCs and Subnets: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html in the *Amazon VPC User Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-subnets
UpdateType: Immutable

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

### -Type
The type of compute environment: EC2 or SPOT.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-type
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

### -AllocationStrategy
The allocation strategy to use for the compute resource in case not enough instances of the best fitting instance type can be allocated.
This could be due to availability of the instance type in the region or Amazon EC2 service limits: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html.
If this is not specified, the default is BEST_FIT, which will use only the best fitting instance type, waiting for additional capacity if it's not available.
This allocation strategy keeps costs lower but can limit scaling.
If you are using Spot Fleets with BEST_FIT then the Spot Fleet IAM Role must be specified.
BEST_FIT_PROGRESSIVE will select additional instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types with a lower cost per vCPU.
SPOT_CAPACITY_OPTIMIZED is only available for Spot Instance compute resources and will select additional instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types that are less likely to be interrupted.
For more information, see Allocation Strategies: https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html  in the *AWS Batch User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-allocationstrategy
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

### -MinvCpus
The minimum number of Amazon EC2 vCPUs that an environment should maintain even if the compute environment is DISABLED.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-minvcpus
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LaunchTemplate
The launch template to use for your compute resources.
Any other compute resource parameters that you specify in a CreateComputeEnvironment: https://docs.aws.amazon.com/batch/latest/APIReference/API_CreateComputeEnvironment.html API operation override the same parameters in the launch template.
You must specify either the launch template ID or launch template name in the request, but not both.
For more information, see Launch Template Support: https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html in the *AWS Batch User Guide*.

Type: LaunchTemplateSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-launchtemplate
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageId
The Amazon Machine Image AMI ID used for instances launched in the compute environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-imageid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceRole
The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment.
You can specify the short name or full Amazon Resource Name ARN of an instance profile.
For example,  ecsInstanceRole  or arn:aws:iam::\<aws_account_id\>:instance-profile/ecsInstanceRole .
For more information, see Amazon ECS Instance Role: https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html in the *AWS Batch User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancerole
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceTypes
The instances types that may be launched.
You can specify instance families to launch any instance type within those families for example, c5 or p3, or you can specify specific sizes within a family such as c5.8xlarge.
You can also choose optimal to pick instance types from the C, M, and R instance families on the fly that match the demand of your job queues.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancetypes
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ec2KeyPair
The Amazon EC2 key pair that is used for instances launched in the compute environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-ec2keypair
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlacementGroup
The Amazon EC2 placement group to associate with your compute resources.
If you intend to submit multi-node parallel jobs to your compute environment, you should consider creating a cluster placement group and associate it with your compute resources.
This keeps your multi-node parallel job on a logical grouping of instances within a single Availability Zone with high network flow potential.
For more information, see Placement Groups: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html in the *Amazon EC2 User Guide for Linux Instances*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-placementgroup
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Key-value pair tags to be applied to resources that are launched in the compute environment.
For AWS Batch, these take the form of "String1": "String2", where String1 is the tag key and String2 is the tag value-for example, { "Name": "AWS Batch Instance - C4OnDemand" }.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-tags
PrimitiveType: Json
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DesiredvCpus
The desired number of Amazon EC2 vCPUS in the compute environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-desiredvcpus
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.ComputeEnvironment.ComputeResources
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html)

