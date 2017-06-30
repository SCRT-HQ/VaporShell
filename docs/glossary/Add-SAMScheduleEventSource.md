---
layout: glossary
title: Add-SAMScheduleEventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMScheduleEventSource

## SYNOPSIS
Adds a Schedule Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMScheduleEventSource [-LogicalId] <String> -Schedule <String> [-JSONInput <String>]
```

## DESCRIPTION
The object describing an event source with type Schedule.

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.

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

### -Schedule
Required.
Uri Schedule for which this function is invoked.
MUST start with /.

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

### -JSONInput
JSON-formatted string to pass to the function as the event body.

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

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.EventSource.Schedule

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#schedule](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#schedule)

