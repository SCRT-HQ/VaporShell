---
layout: glossary
title: Add-SAMEventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMEventSource

## SYNOPSIS
Adds a Serverless Application Model Event Source

## SYNTAX

```
Add-SAMEventSource [-LogicalId] <String> -Type <String> [-Properties <Hashtable>]
```

## DESCRIPTION
Adds a Serverless Application Model Event Source

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

### -Type
Required.
Event type.

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

### -Properties
Required.
Hashtable describing properties of this event mapping.
Must conform to the defined Type

```yaml
Type: Hashtable
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

### Vaporshell.Serverless.EventSource

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#event-source-object](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#event-source-object)

