# New-VSAutoScalingAutoScalingGroup

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup resource to the template.
Defines an Amazon EC2 Auto Scaling group with the specified name and attributes.

## SYNTAX

```
New-VSAutoScalingAutoScalingGroup [-LogicalId] <String> [-AutoScalingGroupName <Object>]
 [-AvailabilityZones <Object>] [-Cooldown <Object>] [-DesiredCapacity <Object>]
 [-HealthCheckGracePeriod <Int32>] [-HealthCheckType <Object>] [-InstanceId <Object>]
 [-LaunchConfigurationName <Object>] [-LaunchTemplate <Object>] [-LifecycleHookSpecificationList <Object>]
 [-LoadBalancerNames <Object>] -MaxSize <Object> [-MetricsCollection <Object>] -MinSize <Object>
 [-MixedInstancesPolicy <Object>] [-NotificationConfigurations <Object>] [-PlacementGroup <Object>]
 [-ServiceLinkedRoleARN <Object>] [-Tags <Object>] [-TargetGroupARNs <Object>] [-TerminationPolicies <Object>]
 [-VPCZoneIdentifier <Object>] [-CreationPolicy <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>]
 [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup resource to the template.
Defines an Amazon EC2 Auto Scaling group with the specified name and attributes.

To configure Amazon EC2 instances launched as part of the group, you can specify a launch template or a launch configuration.
We recommend that you use a launch template to make sure that you can use the latest features of Amazon EC2, such as T2 Unlimited instances.
For more information, see Creating a Launch Template for an Auto Scaling Group: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html.

**Important**

You can add an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html to your Auto Scaling group to perform rolling updates (or replace the group when a change has been made to the group.
You can find sample update policies for rolling updates in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section.

For more information, see CreateAutoScalingGroup: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html and UpdateAutoScalingGroup: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_UpdateAutoScalingGroup.html in the *Amazon EC2 Auto Scaling API Reference*.
For more information about Amazon EC2 Auto Scaling, see the Amazon EC2 Auto Scaling User Guide: https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoScalingGroupName
The name of the Auto Scaling group.
This name must be unique per Region per account.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-autoscalinggroupname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityZones
A list of Availability Zones for the group.
You must specify one of the following properties: VPCZoneIdentifier or AvailabilityZones.
If your account supports EC2-Classic and VPC, this property is required to create an Auto Scaling group that launches instances into EC2-Classic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-availabilityzones
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cooldown
The amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
The default value is 300.
Used only when a scaling-specific cooldown is not specified and not supported for target tracking scaling policies, step scaling policies, or scheduled scaling.
For more information, see Scaling Cooldowns: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-cooldown
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DesiredCapacity
The number of Amazon EC2 instances that the Auto Scaling group attempts to maintain.
The number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.
If you do not specify a desired capacity, the default is the minimum size of the group.
CloudFormation marks the Auto Scaling group as successful by setting its status to CREATE_COMPLETE when the desired capacity is reached.
However, if SpotPrice is set in the launch configuration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html, then desired capacity is not used as a criteria for success, because whether your request is fulfilled depends on Spot Instance capacity and your maximum price.
If the current Spot price is less than your specified maximum price, Amazon EC2 Auto Scaling uses DesiredCapacity as the target capacity for the group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-desiredcapacity
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HealthCheckGracePeriod
The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
For more information, see Health Checks for Auto Scaling Instances: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html in the *Amazon EC2 Auto Scaling User Guide*.
If you are adding an ELB health check, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthcheckgraceperiod
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -HealthCheckType
The service to use for the health checks.
The valid values are EC2 default and ELB.
If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
For more information, see Health Checks for Auto Scaling Instances: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthchecktype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceId
The ID of the instance used to create a launch configuration for the group.
When you specify an ID of an instance, Amazon EC2 Auto Scaling creates a new launch configuration and associates it with the Auto Scaling group.
The new launch configuration derives all its properties from the instance, with the exception of BlockDeviceMapping and AssociatePublicIpAddress.
For more information, see Create an Auto Scaling Group Using an EC2 Instance: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html in the *Amazon EC2 Auto Scaling User Guide*.
You must specify one of the following properties: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-instanceid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LaunchConfigurationName
The name of the LaunchConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html to use to launch instances.
You must specify one of the following properties: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.
When you update LaunchConfigurationName, existing Amazon EC2 instances continue to run with the configuration that they were originally launched with.
To update existing instances, specify an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html for the Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchconfigurationname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LaunchTemplate
The LaunchTemplate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html to use to launch instances.
You must specify one of the following properties: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.
When you update LaunchTemplate, existing Amazon EC2 instances continue to run with the configuration that they were originally launched with.
To update existing instances, specify an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html for the Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchtemplate
Type: LaunchTemplateSpecification
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LifecycleHookSpecificationList
The lifecycle hooks for the group, which specify actions to perform when Amazon EC2 Auto Scaling launches or terminates instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecificationlist
DuplicatesAllowed: True
ItemType: LifecycleHookSpecification
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoadBalancerNames
A list of Classic Load Balancers associated with this Auto Scaling group.
For Application Load Balancers and Network Load Balancers, specify a list of target groups using the TargetGroupARNs property instead.
For more information, see Using a Load Balancer with an Auto Scaling Group: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-loadbalancernames
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxSize
The maximum number of Amazon EC2 instances in the Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-maxsize
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricsCollection
Enables the monitoring of group metrics of an Auto Scaling group.
By default, these metrics are disabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-metricscollection
DuplicatesAllowed: True
ItemType: MetricsCollection
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinSize
The minimum number of Amazon EC2 instances in the Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-minsize
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MixedInstancesPolicy
An embedded object that specifies a mixed instances policy.
The policy includes properties that not only define the distribution of On-Demand Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacity, but also the properties that specify the instance configuration information-the launch template and instance types.
For more information, see Auto Scaling Groups with Multiple Instance Types and Purchase Options: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html in the *Amazon EC2 Auto Scaling User Guide*.
You must specify one of the following properties: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-mixedinstancespolicy
Type: MixedInstancesPolicy
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotificationConfigurations
Configures an Auto Scaling group to send notifications when specified events take place.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-notificationconfigurations
DuplicatesAllowed: True
ItemType: NotificationConfiguration
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlacementGroup
The name of an existing cluster placement group into which you want to launch your instances.
A placement group is a logical grouping of instances within a single Availability Zone.
You cannot specify multiple Availability Zones and a placement group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-placementgroup
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceLinkedRoleARN
The Amazon Resource Name ARN of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
By default, Amazon EC2 Auto Scaling uses a service-linked role named AWSServiceRoleForAutoScaling, which it creates if it does not exist.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-servicelinkedrolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
The tags for the group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-tags
DuplicatesAllowed: True
ItemType: TagProperty
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetGroupARNs
A list of Amazon Resource Names ARN of target groups to associate with the Auto Scaling group.
Instances are registered as targets in a target group, and traffic is routed to the target group.
For more information, see Using a Load Balancer with an Auto Scaling Group: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-targetgrouparns
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TerminationPolicies
A policy or a list of policies that are used to select the instances to terminate.
The policies are executed in the order that you list them.
The termination policies supported by Amazon EC2 Auto Scaling: OldestInstance, OldestLaunchConfiguration, NewestInstance, ClosestToNextInstanceHour, Default, OldestLaunchTemplate, and AllocationStrategy.
For more information, see Controlling Which Auto Scaling Instances Terminate During Scale In: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-termpolicy
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VPCZoneIdentifier
A list of subnet IDs for a virtual private cloud VPC.
If you specify VPCZoneIdentifier with AvailabilityZones, the subnets that you specify for this property must reside in those Availability Zones.
If your account supports EC2-Classic and VPC, this property is required to create an Auto Scaling group that launches instances into a VPC.
If this resource has a public IP address and is also in a VPC that is defined in the same stack template, you must use the DependsOn attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html to declare a dependency on the VPC-gateway attachment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html.
When you update VPCZoneIdentifier, this retains the same Auto Scaling group and replaces old instances with new ones, according to the specified subnets.
You can specify how AWS CloudFormation handles these updates by using an UpdatePolicy attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-vpczoneidentifier
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreationPolicy
Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds.
For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding.
In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

You must use the "Add-CreationPolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.AutoScalingGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html)

