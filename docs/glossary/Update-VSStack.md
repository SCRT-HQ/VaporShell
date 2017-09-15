---
layout: glossary
title: Update-VSStack
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Update-VSStack

## SYNOPSIS
Updates a Stack.

## SYNTAX

### Path (Default)
```
Update-VSStack [-Path] <String> [-Capabilities <String[]>] [-ClientRequestToken <String>]
 [-NotificationARNs <String[]>] [-Parameters <Parameter[]>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackName <String>] [-StackPolicyBody <String>] [-StackPolicyURL <String>]
 [-StackPolicyDuringUpdateBody <String>] [-StackPolicyDuringUpdateURL <String>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateBody
```
Update-VSStack [-TemplateBody] <String> [-Capabilities <String[]>] [-ClientRequestToken <String>]
 [-NotificationARNs <String[]>] [-Parameters <Parameter[]>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackName <String>] [-StackPolicyBody <String>] [-StackPolicyURL <String>]
 [-StackPolicyDuringUpdateBody <String>] [-StackPolicyDuringUpdateURL <String>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateUrl
```
Update-VSStack [-TemplateUrl] <String> [-Capabilities <String[]>] [-ClientRequestToken <String>]
 [-NotificationARNs <String[]>] [-Parameters <Parameter[]>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackName <String>] [-StackPolicyBody <String>] [-StackPolicyURL <String>]
 [-StackPolicyDuringUpdateBody <String>] [-StackPolicyDuringUpdateURL <String>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### UsePreviousTemplate
```
Update-VSStack [-UsePreviousTemplate] [-Capabilities <String[]>] [-ClientRequestToken <String>]
 [-NotificationARNs <String[]>] [-Parameters <Parameter[]>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackName <String>] [-StackPolicyBody <String>] [-StackPolicyURL <String>]
 [-StackPolicyDuringUpdateBody <String>] [-StackPolicyDuringUpdateURL <String>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -TemplateBody
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
(For more information, go to Template Anatomy in the AWS CloudFormation User Guide.)

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
The path to the local file containing the stack template.

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
Location of file containing the template body.
The URL must point to a template that is located in an Amazon S3 bucket.

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
Reuse the existing template that is associated with the stack that you are updating.

```yaml
Type: SwitchParameter
Parameter Sets: UsePreviousTemplate
Aliases: 

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Capabilities
A list of values that you must specify before AWS CloudFormation can update certain stacks.
Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users.
For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM.
The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition.

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

### -ClientRequestToken
A unique identifier for this UpdateStack request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name.
You might retry UpdateStack requests to ensure that AWS CloudFormation successfully received them.

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
Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack.
Specify an empty list to remove all notification topics.

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
A list of Parameter structures that specify input parameters for the stack.
For more information, see the Parameter data type.

```yaml
Type: Parameter[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceTypes
The template resource types that you have permissions to work with for this update stack action, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance.
If the list of resource types doesn't include a resource that you're updating, the stack update fails.
By default, AWS CloudFormation grants permissions to all resource types.
AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies.

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
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack.
AWS CloudFormation uses the role's credentials to make calls on your behalf.
AWS CloudFormation always uses this role for all future operations on the stack.
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

### -StackName
The name or unique stack ID of the stack to update.

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

### -StackPolicyBody
Structure containing a new stack policy body.
You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both.
You might update the stack policy, for example, in order to protect a new resource that you created during a stack update.
If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.

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

### -StackPolicyURL
Location of a file containing the updated stack policy.
The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack.

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

### -StackPolicyDuringUpdateBody
Structure containing the temporary overriding stack policy body.

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

### -StackPolicyDuringUpdateURL
Location of a file containing the temporary overriding stack policy.
The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack.

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
AWS CloudFormation also propagates these tags to supported resources in the stack.
You can specify a maximum number of 50 tags.
If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags.
If you specify an empty value, AWS CloudFormation removes all associated tags.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

