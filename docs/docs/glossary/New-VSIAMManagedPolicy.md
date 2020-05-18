# New-VSIAMManagedPolicy

## SYNOPSIS
Adds an AWS::IAM::ManagedPolicy resource to the template.
Creates a new managed policy for your AWS account.

## SYNTAX

```
New-VSIAMManagedPolicy [-LogicalId] <String> [-Description <Object>] [-Groups <Object>]
 [-ManagedPolicyName <Object>] [-Path <Object>] -PolicyDocument <Object> [-Roles <Object>] [-Users <Object>]
 [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IAM::ManagedPolicy resource to the template.
Creates a new managed policy for your AWS account.

This operation creates a policy version with a version identifier of v1 and sets v1 as the policy's default version.
For more information about policy versions, see Versioning for Managed Policies: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html in the *IAM User Guide*.

For more information about managed policies in general, see Managed Policies and Inline Policies: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html in the *IAM User Guide*.

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

### -Description
A friendly description of the policy.
Typically used to store information about the permissions defined in the policy.
For example, "Grants access to production DynamoDB tables."
The policy description is immutable.
After a value is assigned, it cannot be changed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-description
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

### -Groups
The name friendly name, not ARN of the group to attach the policy to.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-groups
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

### -ManagedPolicyName
The friendly name of the policy.
If you specify a name, you cannot perform updates that require replacement of this resource.
You can perform updates that require no or some interruption.
If you must replace the resource, specify a new name.
If you specify a name, you must specify the CAPABILITY_NAMED_IAM value to acknowledge your template's capabilities.
For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#using-iam-capabilities.
Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions.
To prevent this, we recommend using Fn::Join and AWS::Region to create a Region-specific name, as in the following example: {"Fn::Join": "", {"Ref": "AWS::Region"}, {"Ref": "MyResourceName"}\]\]}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-managedpolicyname
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

### -Path
The path for the policy.
For more information about paths, see IAM Identifiers: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html in the *IAM User Guide*.
This parameter is optional.
If it is not included, it defaults to a slash /.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of either a forward slash / by itself or a string that must begin and end with forward slashes.
In addition, it can contain any ASCII character from the !
u0021 through the DEL character u007F, including most punctuation characters, digits, and upper and lowercased letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-ec2-dhcpoptions-path
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

### -PolicyDocument
The JSON policy document that you want to use as the content for the new policy.
You must provide policies in JSON format in IAM.
However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format.
AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
The regex pattern: http://wikipedia.org/wiki/regex used to validate this parameter is a string of characters consisting of the following:
+ Any printable ASCII character ranging from the space character u0020 through the end of the ASCII character range
+ The printable characters in the Basic Latin and Latin-1 Supplement character set through u00FF
+ The special characters tab u0009, line feed u000A, and carriage return u000D

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-policydocument
PrimitiveType: Json
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

### -Roles
The name friendly name, not ARN of the role to attach the policy to.
This parameter allows per its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-
If an external policy such as AWS::IAM::Policy or AWS::IAM::ManagedPolicy has a Ref to a role and if a resource such as AWS::ECS::Service also has a Ref to the same role, add a DependsOn attribute to the resource to make the resource depend on the external policy.
This dependency ensures that the role's policy is available throughout the resource's lifecycle.
For example, when you delete a stack with an AWS::ECS::Service resource, the DependsOn attribute ensures that AWS CloudFormation deletes the AWS::ECS::Service resource before deleting its role's policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-roles
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

### -Users
The name friendly name, not ARN of the IAM user to attach the policy to.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-users
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

### Vaporshell.Resource.IAM.ManagedPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html)

