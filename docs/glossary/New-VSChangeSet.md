# New-VSChangeSet

## SYNOPSIS
Creates a new Change Set.

## SYNTAX

### Path (Default)
```
New-VSChangeSet [-Path] <String> -StackName <String> [-ChangeSetName <String>] [-Capabilities <String[]>]
 [-ChangeSetType <ChangeSetType>] [-ClientRequestToken <String>] [-Description <String>]
 [-NotificationARNs <String[]>] [-Parameters <Object>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-Tags <Hashtable>] [-Watch] [-ProfileName <String>] [-Force] [<CommonParameters>]
```

### TemplateBody
```
New-VSChangeSet [-TemplateBody] <String> -StackName <String> [-ChangeSetName <String>]
 [-Capabilities <String[]>] [-ChangeSetType <ChangeSetType>] [-ClientRequestToken <String>]
 [-Description <String>] [-NotificationARNs <String[]>] [-Parameters <Object>] [-ResourceTypes <String[]>]
 [-RoleARN <String>] [-Tags <Hashtable>] [-Watch] [-ProfileName <String>] [-Force] [<CommonParameters>]
```

### TemplateUrl
```
New-VSChangeSet [-TemplateUrl] <String> -StackName <String> [-ChangeSetName <String>]
 [-Capabilities <String[]>] [-ChangeSetType <ChangeSetType>] [-ClientRequestToken <String>]
 [-Description <String>] [-NotificationARNs <String[]>] [-Parameters <Object>] [-ResourceTypes <String[]>]
 [-RoleARN <String>] [-Tags <Hashtable>] [-Watch] [-ProfileName <String>] [-Force] [<CommonParameters>]
```

### UsePreviousTemplate
```
New-VSChangeSet [-UsePreviousTemplate] -StackName <String> [-ChangeSetName <String>] [-Capabilities <String[]>]
 [-ChangeSetType <ChangeSetType>] [-ClientRequestToken <String>] [-Description <String>]
 [-NotificationARNs <String[]>] [-Parameters <Object>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-Tags <Hashtable>] [-Watch] [-ProfileName <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
Creates a new Change Set for the specified StackName.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -TemplateBody
The body of the template to be used for this change set.

```yaml
Type: String
Parameter Sets: TemplateBody
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
The path to the template file to be used with this change set.

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateUrl
The S3 Url to the template file to be used with this change set.

```yaml
Type: String
Parameter Sets: TemplateUrl
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UsePreviousTemplate
A flag to indicate that this change set should use the previous template.

```yaml
Type: SwitchParameter
Parameter Sets: UsePreviousTemplate
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackName
The name or the unique ID of the stack for which you are creating a change set.
AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StackId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChangeSetName
The name of the change set.
The name must be unique among all change sets that are associated with the specified stack.
A change set name can contain only alphanumeric, case sensitive characters and hyphens.
It must start with an alphabetic character and cannot exceed 128 characters.

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

### -Capabilities
A list of values that you must specify before AWS CloudFormation can update certain stacks.
Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users.
For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM.
The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition.
If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
If you have IAM resources, you can specify either capability.
If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.
If you don't specify this parameter, this action returns an InsufficientCapabilities error.

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

### -ChangeSetType
The type of change set operation.
To create a change set for a new stack, specify CREATE.
To create a change set for an existing stack, specify UPDATE.

```yaml
Type: ChangeSetType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientRequestToken
{{ Fill ClientRequestToken Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases: ClientToken

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A description to help you identify this change set.

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

### -NotificationARNs
The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack.
To remove all associated notification topics, specify an empty list.

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

### -Parameters
A list of Parameter structures that specify input parameters for the change set

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

### -ResourceTypes
The template resource types that you have permissions to work with if you execute this change set, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance.
If the list of resource types doesn't include a resource type that you're updating, the stack update fails.
By default, AWS CloudFormation grants permissions to all resource types.
AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation.

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

### -RoleARN
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set.
AWS CloudFormation uses the role's credentials to make calls on your behalf.
AWS CloudFormation uses this role for all future operations on the stack.
As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it.
Ensure that the role grants least privilege.
If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack.
If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

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

### -Tags
Key-value pairs to associate with this stack.
AWS CloudFormation also propagates these tags to resources in the stack.
You can specify a maximum of 50 tags.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Watch
If $true, runs Watch-Stack to show the colorized output of the stack events.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
If $true, executes the change set as soon as it's ready.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
