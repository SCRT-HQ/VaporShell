# New-VSAppStreamImageBuilder

## SYNOPSIS
Adds an AWS::AppStream::ImageBuilder resource to the template.
The AWS::AppStream::ImageBuilder resource creates an image builder for Amazon AppStream 2.0.
An image builder is a virtual machine that is used to create an image.

## SYNTAX

```
New-VSAppStreamImageBuilder [-LogicalId] <String> [-ImageName <Object>] [-Description <Object>]
 [-VpcConfig <Object>] [-EnableDefaultInternetAccess <Object>] [-DisplayName <Object>]
 [-DomainJoinInfo <Object>] [-AppstreamAgentVersion <Object>] -InstanceType <Object> [-Tags <Object>]
 -Name <Object> [-ImageArn <Object>] [-AccessEndpoints <Object>] [-DeletionPolicy <String>]
 [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppStream::ImageBuilder resource to the template.
The AWS::AppStream::ImageBuilder resource creates an image builder for Amazon AppStream 2.0.
An image builder is a virtual machine that is used to create an image.

The initial state of the image builder is PENDING.
When it is ready, the state is RUNNING.

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

### -ImageName
The name of the image used to create the image builder.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagename
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

### -Description
The description to display.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-description
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

### -VpcConfig
The VPC configuration for the image builder.
You can specify only one subnet.

Type: VpcConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-vpcconfig
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

### -EnableDefaultInternetAccess
Enables or disables default internet access for the image builder.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-enabledefaultinternetaccess
PrimitiveType: Boolean
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

### -DisplayName
The image builder name to display.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-displayname
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

### -DomainJoinInfo
The name of the directory and organizational unit OU to use to join the image builder to a Microsoft Active Directory domain.

Type: DomainJoinInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-domainjoininfo
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

### -AppstreamAgentVersion
The version of the AppStream 2.0 agent to use for this image builder.
To use the latest version of the AppStream 2.0 agent, specify LATEST\].

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-appstreamagentversion
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

### -InstanceType
The instance type to use when launching the image builder.
The following instance types are available:
+ stream.standard.medium
+ stream.standard.large
+ stream.compute.large
+ stream.compute.xlarge
+ stream.compute.2xlarge
+ stream.compute.4xlarge
+ stream.compute.8xlarge
+ stream.memory.large
+ stream.memory.xlarge
+ stream.memory.2xlarge
+ stream.memory.4xlarge
+ stream.memory.8xlarge
+ stream.memory.z1d.large
+ stream.memory.z1d.xlarge
+ stream.memory.z1d.2xlarge
+ stream.memory.z1d.3xlarge
+ stream.memory.z1d.6xlarge
+ stream.memory.z1d.12xlarge
+ stream.graphics-design.large
+ stream.graphics-design.xlarge
+ stream.graphics-design.2xlarge
+ stream.graphics-design.4xlarge
+ stream.graphics-desktop.2xlarge
+ stream.graphics.g4dn.xlarge
+ stream.graphics.g4dn.2xlarge
+ stream.graphics.g4dn.4xlarge
+ stream.graphics.g4dn.8xlarge
+ stream.graphics.g4dn.12xlarge
+ stream.graphics.g4dn.16xlarge
+ stream.graphics-pro.4xlarge
+ stream.graphics-pro.8xlarge
+ stream.graphics-pro.16xlarge

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-instancetype
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

### -Tags
An array of key-value pairs.
For more information, see Using Cost Allocation Tags: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html in the *AWS Billing and Cost Management User Guide*.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-tags
ItemType: Tag
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

### -Name
A unique name for the image builder.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-name
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

### -ImageArn
The ARN of the public, private, or shared image to use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagearn
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

### -AccessEndpoints
The list of virtual private cloud VPC interface endpoint objects.
Administrators can connect to the image builder only through the specified endpoints.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-accessendpoints
ItemType: AccessEndpoint
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

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

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

### Vaporshell.Resource.AppStream.ImageBuilder
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html)

