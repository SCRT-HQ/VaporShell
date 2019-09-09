# New-VSIAMPolicy

## SYNOPSIS
Adds an AWS::IAM::Policy resource to the template.
Adds or updates an inline policy document that is embedded in the specified IAM user, group, or role.

## SYNTAX

```
New-VSIAMPolicy [-LogicalId] <String> [-Groups <Object>] -PolicyDocument <Object> -PolicyName <Object>
 [-Roles <Object>] [-Users <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IAM::Policy resource to the template.
Adds or updates an inline policy document that is embedded in the specified IAM user, group, or role.

An IAM user can also have a managed policy attached to it.
For information about policies, see Managed Policies and Inline Policies: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html in the *IAM User Guide*.

The Groups, Roles, and Users properties are optional.
However, you must specify at least one of these properties.

For information about limits on the number of inline policies that you can embed in an identity, see Limitations on IAM Entities: https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html in the *IAM User Guide*.

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

### -Groups
The name of the group to associate the policy with.
&regex-name;.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-groups
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

### -PolicyDocument
The policy document.
You must provide policies in JSON format in IAM.
However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format.
AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
The regex pattern: http://wikipedia.org/wiki/regex used to validate this parameter is a string of characters consisting of the following:
+ Any printable ASCII character ranging from the space character u0020 through the end of the ASCII character range
+ The printable characters in the Basic Latin and Latin-1 Supplement character set through u00FF
+ The special characters tab u0009, line feed u000A, and carriage return u000D

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument
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

### -PolicyName
The name of the policy document.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policyname
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

### -Roles
The name of the role to associate the policy with.
This parameter allows per its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-
If an external policy such as AWS::IAM::Policy or AWS::IAM::ManagedPolicy has a Ref to a role and if a resource such as AWS::ECS::Service also has a Ref to the same role, add a DependsOn attribute to the resource to make the resource depend on the external policy.
This dependency ensures that the role's policy is available throughout the resource's lifecycle.
For example, when you delete a stack with an AWS::ECS::Service resource, the DependsOn attribute ensures that AWS CloudFormation deletes the AWS::ECS::Service resource before deleting its role's policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-roles
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
The name of the user to associate the policy with.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-users
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

### Vaporshell.Resource.IAM.Policy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html)

