# New-VSCodeDeployDeploymentGroup

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup resource to the template.
The AWS::CodeDeploy::DeploymentGroup resource creates an AWS CodeDeploy deployment group that specifies which instances your application revisions are deployed to, along with other deployment options.
For more information, see CreateDeploymentGroup: https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeploymentGroup.html in the *CodeDeploy API Reference*.

## SYNTAX

```
New-VSCodeDeployDeploymentGroup [-LogicalId] <String> [-AlarmConfiguration <Object>] -ApplicationName <Object>
 [-AutoRollbackConfiguration <Object>] [-AutoScalingGroups <Object>] [-Deployment <Object>]
 [-DeploymentConfigName <Object>] [-DeploymentGroupName <Object>] [-DeploymentStyle <Object>]
 [-Ec2TagFilters <Object>] [-Ec2TagSet <Object>] [-LoadBalancerInfo <Object>]
 [-OnPremisesInstanceTagFilters <Object>] [-OnPremisesTagSet <Object>] -ServiceRoleArn <Object>
 [-TriggerConfigurations <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup resource to the template.
The AWS::CodeDeploy::DeploymentGroup resource creates an AWS CodeDeploy deployment group that specifies which instances your application revisions are deployed to, along with other deployment options.
For more information, see CreateDeploymentGroup: https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeploymentGroup.html in the *CodeDeploy API Reference*.

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

### -AlarmConfiguration
Information about the Amazon CloudWatch alarms that are associated with the deployment group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-alarmconfiguration
Type: AlarmConfiguration
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

### -ApplicationName
The name of an existing CodeDeploy application to associate this deployment group with.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-applicationname
PrimitiveType: String
UpdateType: Immutable

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

### -AutoRollbackConfiguration
Information about the automatic rollback configuration that is associated with the deployment group.
If you specify this property, don't specify the Deployment property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration
Type: AutoRollbackConfiguration
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

### -AutoScalingGroups
A list of associated Auto Scaling groups that CodeDeploy automatically deploys revisions to when new instances are created.
Duplicates are not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autoscalinggroups
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

### -Deployment
The application revision to deploy to this deployment group.
If you specify this property, your target application revision is deployed as soon as the provisioning process is complete.
If you specify this property, don't specify the AutoRollbackConfiguration property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deployment
Type: Deployment
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

### -DeploymentConfigName
A deployment configuration name or a predefined configuration name.
With predefined configurations, you can deploy application revisions to one instance at a time, half of the instances at a time, or all the instances at once.
For more information and valid values, see Working with Deployment Configurations: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html in the *AWS CodeDeploy User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentconfigname
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

### -DeploymentGroupName
A name for the deployment group.
If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the deployment group name.
For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html.
If you specify a name, you cannot perform updates that require replacement of this resource.
You can perform updates that require no or some interruption.
If you must replace the resource, specify a new name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentgroupname
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

### -DeploymentStyle
Attributes that determine the type of deployment to run and whether to route deployment traffic behind a load balancer.
If you specify this property with a blue/green deployment type, don't specify the AutoScalingGroups, LoadBalancerInfo, or Deployment properties.
For blue/green deployments, AWS CloudFormation supports deployments on Lambda compute platforms only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentstyle
Type: DeploymentStyle
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

### -Ec2TagFilters
The EC2 tags that are already applied to EC2 instances that you want to include in the deployment group.
CodeDeploy includes all EC2 instances identified by any of the tags you specify in this deployment group.
Duplicates are not allowed.
You can specify EC2TagFilters or Ec2TagSet, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagfilters
DuplicatesAllowed: False
ItemType: EC2TagFilter
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

### -Ec2TagSet
Information about groups of tags applied to EC2 instances.
The deployment group includes only EC2 instances identified by all the tag groups.
Cannot be used in the same call as ec2TagFilter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagset
Type: EC2TagSet
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

### -LoadBalancerInfo
Information about the load balancer to use in a deployment.
For more information, see  Integrating CodeDeploy with Elastic Load Balancing : https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-elastic-load-balancing.html in the *AWS CodeDeploy User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo
Type: LoadBalancerInfo
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

### -OnPremisesInstanceTagFilters
The on-premises instance tags already applied to on-premises instances that you want to include in the deployment group.
CodeDeploy includes all on-premises instances identified by any of the tags you specify in this deployment group.
To register on-premises instances with CodeDeploy, see Working with On-Premises Instances for CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-on-premises.html in the *AWS CodeDeploy User Guide*.
Duplicates are not allowed.
You can specify OnPremisesInstanceTagFilters or OnPremisesInstanceTagSet, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisesinstancetagfilters
DuplicatesAllowed: False
ItemType: TagFilter
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

### -OnPremisesTagSet
Information about groups of tags applied to on-premises instances.
The deployment group includes only on-premises instances identified by all the tag groups.
You can specify OnPremisesInstanceTagFilters or OnPremisesInstanceTagSet, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisestagset
Type: OnPremisesTagSet
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

### -ServiceRoleArn
A service role Amazon Resource Name ARN that grants CodeDeploy permission to make calls to AWS services on your behalf.
For more information, see Create a Service Role for AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html in the *AWS CodeDeploy User Guide*.
In some cases, you might need to add a dependency on the service role's policy.
For more information, see IAM role policy in DependsOn Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-servicerolearn
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

### -TriggerConfigurations
Information about triggers associated with the deployment group.
Duplicates are not allowed

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-triggerconfigurations
DuplicatesAllowed: False
ItemType: TriggerConfig
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html)

