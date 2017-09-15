---
layout: glossary
title: Get-VSStackSet
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Get-VSStackSet

## SYNOPSIS
Gets information about a Stack Set

## SYNTAX

### Description (Default)
```
Get-VSStackSet [-Description] [-StackSetName <String>] [-ProfileName <String>]
```

### ListStackSets
```
Get-VSStackSet [-List] [-StackSetName <String>] [-MaxResults <Int32>] [-Status <String>]
 [-ProfileName <String>]
```

## DESCRIPTION
Gets information about a Stack Set

## PARAMETERS

### -Description
Returns the description of the specified stack set.

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
Returns summary information about stack sets that are associated with the user.

```yaml
Type: SwitchParameter
Parameter Sets: ListStackSets
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackSetName
The name or the unique stack ID of the stack set that you want to get information for.

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

### -MaxResults
The maximum number of results to be returned with a single call.

```yaml
Type: Int32
Parameter Sets: ListStackSets
Aliases: 

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
The status of the stack sets that you want to get summary information about.

```yaml
Type: String
Parameter Sets: ListStackSets
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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

