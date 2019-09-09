# New-VSIAMUser

## SYNOPSIS
Adds an AWS::IAM::User resource to the template.
Creates a new IAM user for your AWS account.

## SYNTAX

```
New-VSIAMUser [-LogicalId] <String> [-Groups <Object>] [-LoginProfile <Object>] [-ManagedPolicyArns <Object>]
 [-Path <Object>] [-PermissionsBoundary <Object>] [-Policies <Object>] [-UserName <Object>]
 [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IAM::User resource to the template.
Creates a new IAM user for your AWS account.

For information about limitations on the number of IAM users you can create, see Limitations on IAM Entities: https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html in the *IAM User Guide*.

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
A list of groups to which you want to add the user.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-groups
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

### -LoginProfile
Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console.
For more information about managing passwords, see Managing Passwords: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html in the *IAM User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-loginprofile
Type: LoginProfile
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

### -ManagedPolicyArns
A list of Amazon Resource Names ARNs of the IAM managed policies that you want to attach to the user.
For more information about ARNs, see Amazon Resource Names ARNs and AWS Service Namespaces: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html in the *AWS General Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-managepolicyarns
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
The path for the user name.
For more information about paths, see IAM Identifiers: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html in the *IAM User Guide*.
This parameter is optional.
If it is not included, it defaults to a slash /.
This parameter allows through its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of either a forward slash / by itself or a string that must begin and end with forward slashes.
In addition, it can contain any ASCII character from the !
u0021 through the DEL character u007F, including most punctuation characters, digits, and upper and lowercased letters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-path
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

### -PermissionsBoundary
The ARN of the policy that is used to set the permissions boundary for the user.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-permissionsboundary
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
Adds or updates an inline policy document that is embedded in the specified IAM user.
To view AWS::IAM::User snippets, see Declaring an IAM User Resource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-iam-user.
The name of each policy for a role, user, or group must be unique.
If you don't choose unique names, updates to the IAM identity will fail.
For information about limits on the number of inline policies that you can embed in a user, see Limitations on IAM Entities: https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html in the *IAM User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-policies
DuplicatesAllowed: True
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

### -UserName
The name of the user to create.
Do not include the path in this value.
This parameter allows per its regex pattern: http://wikipedia.org/wiki/regex a string of characters consisting of upper and lowercase alphanumeric characters with no spaces.
You can also include any of the following characters: _+=,.@-.
The user name must be unique within the account.
User names are not distinguished by case.
For example, you cannot create users named both "John" and "john".
If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the user name.
If you specify a name, you must specify the CAPABILITY_NAMED_IAM value to acknowledge your template's capabilities.
For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#using-iam-capabilities.
Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions.
To prevent this, we recommend using Fn::Join and AWS::Region to create a Region-specific name, as in the following example: {"Fn::Join": "", {"Ref": "AWS::Region"}, {"Ref": "MyResourceName"}\]\]}.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-username
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

### Vaporshell.Resource.IAM.User
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html)

