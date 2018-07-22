---
layout: glossary
title: New-VSStackSet
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# New-VSStackSet

## SYNOPSIS
Creates a new Stack Set

## SYNTAX

### Path (Default)
```
New-VSStackSet [-Path] <String> -StackSetName <String> [-Capabilities <String[]>]
 [-ClientRequestToken <String>] [-Description <String>] [-Parameters <Object>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### TemplateBody
```
New-VSStackSet [-TemplateBody] <String> -StackSetName <String> [-Capabilities <String[]>]
 [-ClientRequestToken <String>] [-Description <String>] [-Parameters <Object>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### TemplateUrl
```
New-VSStackSet [-TemplateUrl] <String> -StackSetName <String> [-Capabilities <String[]>]
 [-ClientRequestToken <String>] [-Description <String>] [-Parameters <Object>] [-Tags <String>]
 [-ProfileName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -TemplateBody
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

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
File path to the local template file.

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
The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket

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

### -StackSetName
The name to associate with the stack set.
The name must be unique in the region where you create your stack set.
A stack name can contain only alphanumeric characters (case-sensitive) and hyphens.
It must start with an alphabetic character and can't be longer than 128 characters.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Capabilities
A list of values that you must specify before AWS CloudFormation can create certain stacks.
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

### -ClientRequestToken
A unique identifier for this CreateStackSet request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name.
You might retry CreateStackSet requests to ensure that AWS CloudFormation successfully received them.
If you don't specify an operation ID, the SDK generates one automatically.

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

### -Description
A description of the stack set.
You can use the description to identify the stack set's purpose or other important information.

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

### -Parameters
The input parameters for the stack set template.

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
Key-value pairs to associate with this stack.
AWS CloudFormation also propagates these tags to resources in the stack.
You can specify a maximum of 50 tags.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
