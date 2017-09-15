---
layout: glossary
title: Get-VSStackSetInstance
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Get-VSStackSetInstance

## SYNOPSIS
Gets information about an Instance of a Stack Set

## SYNTAX

### Description (Default)
```
Get-VSStackSetInstance [-Description] [-StackInstanceAccount <String>] [-StackInstanceRegion <String>]
 [-StackSetName <String>] [-ProfileName <String>]
```

### ListStackInstances
```
Get-VSStackSetInstance [-List] [-StackInstanceAccount <String>] [-StackInstanceRegion <String>]
 [-StackSetName <String>] [-MaxResults <Int32>] [-ProfileName <String>]
```

## DESCRIPTION
Gets information about an Instance of a Stack Set

## PARAMETERS

### -Description
Returns the stack instance that's associated with the specified stack set, AWS account, and region.

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
Returns summary information about stack instances that are associated with the specified stack set.
You can filter for stack instances that are associated with a specific AWS account name or region.

```yaml
Type: SwitchParameter
Parameter Sets: ListStackInstances
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackInstanceAccount
The name of the AWS account that you want to list stack instances for.

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

### -StackInstanceRegion
The name of the region where you want to list stack instances.

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

### -StackSetName
The name or unique ID of the stack set that you want to list stack instances for.

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
Parameter Sets: ListStackInstances
Aliases: 

Required: False
Position: Named
Default value: 0
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

