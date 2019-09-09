# New-VSIAMGroup

## SYNOPSIS
Adds an AWS::IAM::Group resource to the template.
Creates a new group.

## SYNTAX

```
New-VSIAMGroup [-LogicalId] <String> [-GroupName <Object>] [-ManagedPolicyArns <Object>] [-Path <Object>]
 [-Policies <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IAM::Group resource to the template.
Creates a new group.

For information about the number of groups you can create, see Limitations on IAM Entities: https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html in the *IAM User Guide*.

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

### -GroupName
The name of the group to create.
Do not include the path in this value.
The group name must be unique within the account.
Group names are not distinguished by case.
For example, you cannot create groups named both "ADMINS" and "admins".
If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the group name.
If you specify a name, you cannot perform updates that require replacement of this resource.
You can perform updates that require no or some interruption.
If you must replace the resource, specify a new name.
If you specify a name, you must specify the CAPABILITY_NAMED_IAM value to acknowledge your template's capabilities.
For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#using-iam-capabilities.
Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions.
To prevent this, we recommend using Fn::Join and AWS::Region to create a Region-specific name, as in the following example: {"Fn::Join": "", {"Ref": "AWS::Region"}, {"Ref": "MyResourceName"}\]\]}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-groupname
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

### -ManagedPolicyArns
The Amazon Resource Name ARN of the IAM policy you want to attach.
For more information about ARNs, see Amazon Resource Names ARNs and AWS Service Namespaces: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html in the *AWS General Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-managepolicyarns
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

### -Path
The path to the group.
For more information about paths, see IAM Identifiers: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html in the *IAM User Guide*.
This parameter is optional.
If it is not included, it defaults to a slash /.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of either a forward slash / by itself or a string that must begin and end with forward slashes.
In addition, it can contain any ASCII character from the !
u0021 through the DEL character u007F, including most punctuation characters, digits, and upper and lowercased letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-path
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

### -Policies
Adds or updates an inline policy document that is embedded in the specified IAM group.
To view AWS::IAM::Group snippets, see Declaring an IAM Group Resource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-iam-group.
The name of each inline policy for a role, user, or group must be unique.
If you don't choose unique names, updates to the IAM identity will fail.
For information about limits on the number of inline policies that you can embed in a group, see Limitations on IAM Entities: https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html in the *IAM User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-policies
DuplicatesAllowed: False
ItemType: Policy
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

### Vaporshell.Resource.IAM.Group
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html)

