---
layout: glossary
title: Get-VSStackSetOperation
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Get-VSStackSetOperation

## SYNOPSIS
Gets information about Stack Set Operations

## SYNTAX

### Description (Default)
```
Get-VSStackSetOperation [-Description] -StackSetName <String> [-OperationId <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

### ListStackSetOperations
```
Get-VSStackSetOperation [-List] -StackSetName <String> [-MaxResults <Int32>] [-ProfileName <String>]
 [<CommonParameters>]
```

### ListStackSetOperationResults
```
Get-VSStackSetOperation [-ListResults] -StackSetName <String> [-OperationId <String>] [-MaxResults <Int32>]
 [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets information about Stack Set Operations

## PARAMETERS

### -Description
Returns the description of the specified stack set operation.

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
Returns summary information about operations performed on a stack set.

```yaml
Type: SwitchParameter
Parameter Sets: ListStackSetOperations
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListResults
Returns summary information about the results of a stack set operation.

```yaml
Type: SwitchParameter
Parameter Sets: ListStackSetOperationResults
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackSetName
The name or unique ID of the stack set that you want to list stack instances for.

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

### -OperationId
The unique ID of the stack set operation.

```yaml
Type: String
Parameter Sets: Description, ListStackSetOperationResults
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
Parameter Sets: ListStackSetOperations, ListStackSetOperationResults
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
