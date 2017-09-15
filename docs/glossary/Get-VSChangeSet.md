---
layout: glossary
title: Get-VSChangeSet
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Get-VSChangeSet

## SYNOPSIS
Gets the list of change sets for a stack or describes a specific change set.

## SYNTAX

### Description (Default)
```
Get-VSChangeSet [-Description] [-ChangeSetName <String>] -StackName <String> [-ProfileName <String>]
```

### ListChangeSets
```
Get-VSChangeSet [-List] -StackName <String> [-ProfileName <String>]
```

## PARAMETERS

### -Description
Switch to get a change set description.

```yaml
Type: SwitchParameter
Parameter Sets: Description
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
Switch to get the list of change sets for a specific stack.

```yaml
Type: SwitchParameter
Parameter Sets: ListChangeSets
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChangeSetName
The name or ID of the change set that you are trying to describe.

```yaml
Type: String
Parameter Sets: Description
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackName
The name or ID of the stack that you are trying to get change set info for.

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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

