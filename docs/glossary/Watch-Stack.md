---
layout: glossary
title: Watch-Stack
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Watch-Stack

## SYNOPSIS
Watches Stack Events as they happen.
Colorizes events based on event type.

## SYNTAX

```
Watch-Stack [-StackId] <String> [-InNewWindow] [[-RefreshRate] <Int32>] [[-ProfileName] <String>]
```

## PARAMETERS

### -StackId
The Stack ID or name of the stack that you'd like to watch events for.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StackName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -InNewWindow
WINDOWS ONLY (For now).
Watch events in a new PowerShell window.
So you can continue working in your current console.

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

### -RefreshRate
The rate in seconds that you'd like the event list to poll for new events.
Defaults to 2.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 2
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

