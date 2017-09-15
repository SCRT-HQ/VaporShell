---
layout: glossary
title: Update-VSStackSet
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Update-VSStackSet

## SYNOPSIS
Updates the stack set and all associated stack instances.
Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes.
Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.

## SYNTAX

### Path (Default)
```
Update-VSStackSet [-Path] <String> [-Capabilities <String[]>] [-Description <String>] [-OperationId <String>]
 [-OperationPreferences <StackSetOperationPreferences>] [-Parameters <Parameter[]>] [-StackSetName <String>]
 [-Tags <String>] [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateBody
```
Update-VSStackSet [-TemplateBody] <String> [-Capabilities <String[]>] [-Description <String>]
 [-OperationId <String>] [-OperationPreferences <StackSetOperationPreferences>] [-Parameters <Parameter[]>]
 [-StackSetName <String>] [-Tags <String>] [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateUrl
```
Update-VSStackSet [-TemplateUrl] <String> [-Capabilities <String[]>] [-Description <String>]
 [-OperationId <String>] [-OperationPreferences <StackSetOperationPreferences>] [-Parameters <Parameter[]>]
 [-StackSetName <String>] [-Tags <String>] [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### UsePreviousTemplate
```
Update-VSStackSet [-UsePreviousTemplate] [-Capabilities <String[]>] [-Description <String>]
 [-OperationId <String>] [-OperationPreferences <StackSetOperationPreferences>] [-Parameters <Parameter[]>]
 [-StackSetName <String>] [-Tags <String>] [-ProfileName <String>] [-WhatIf] [-Confirm]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -TemplateBody
The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes

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
The path to the local file containing the template.

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
The location of the file that contains the template body.
The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket.

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
Use the existing template that's associated with the stack set that you're updating.

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
A list of values that you must specify before AWS CloudFormation can create certain stack sets.
Some stack set templates might include resources that can affect permissions in your AWS accountâ€"for example, by creating new AWS Identity and Access Management (IAM) users.
For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.
The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM.
The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::IAM::UserToGroupAddition.

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

### -Description
A brief description of updates that you are making.

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

### -OperationId
The unique ID for this stack set operation.
The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times.
You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
If you don't specify an operation ID, AWS CloudFormation generates one automatically.
Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED.

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

### -OperationPreferences
Preferences for how AWS CloudFormation performs this stack set operation.

```yaml
Type: StackSetOperationPreferences
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
A list of input parameters for the stack set template.

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

### -StackSetName
The name or unique ID of the stack set that you want to update.

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
The key-value pairs to associate with this stack set and the stacks created from it.
AWS CloudFormation also propagates these tags to supported resources that are created in the stacks.
You can specify a maximum number of 50 tags.
If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set.
This means: If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags.
If you specify any tags using this parameter, you must specify all the tags that you want associated with this stack set, even tags you've specifed before (for example, when creating the stack set or during a previous update of the stack set.).
Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well.
If you specify an empty value, AWS CloudFormation removes all currently associated tags.
If you specify new tags as part of an UpdateStackSet action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources.
If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources.
If you don't have the necessary permission(s), the entire UpdateStackSet action fails with an access denied error, and the stack set is not updated.

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

