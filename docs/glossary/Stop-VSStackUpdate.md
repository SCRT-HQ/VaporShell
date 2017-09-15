---
layout: glossary
title: Stop-VSStackUpdate
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Stop-VSStackUpdate

## SYNOPSIS
Cancels an update on the specified stack.
If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.
You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.

## SYNTAX

```
Stop-VSStackUpdate [[-ClientRequestToken] <String>] [[-StackName] <String>] [[-ProfileName] <String>]
```

## PARAMETERS

### -ClientRequestToken
A unique identifier for this CancelUpdateStack request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to cancel an update on a stack with the same name.
You might retry CancelUpdateStack requests to ensure that AWS CloudFormation successfully received them.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackName
The name or the unique stack ID that is associated with the stack.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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
Position: 3
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

