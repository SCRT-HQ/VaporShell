---
layout: glossary
title: New-VSStackSetInstances
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-VSStackSetInstances

## SYNOPSIS
Creates new Stack Set Instances.

## SYNTAX

```
New-VSStackSetInstances [-StackSetName] <String> [[-Accounts] <String[]>] [[-OperationId] <String>]
 [[-OperationPreferences] <StackSetOperationPreferences>] [[-Regions] <String[]>] [[-ProfileName] <String>]
 [-WhatIf] [-Confirm]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -StackSetName
The name or unique ID of the stack set that you want to create stack instances from.

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

### -Accounts
The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperationId
The unique identifier for this stack set operation.
The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times.
You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.
If you don't specify an operation ID, the SDK generates one automatically.
Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Regions
The names of one or more regions where you want to create stack instances using the specified AWS account(s).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
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
Position: 6
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

