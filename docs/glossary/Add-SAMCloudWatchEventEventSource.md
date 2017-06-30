---
layout: glossary
title: Add-SAMCloudWatchEventEventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMCloudWatchEventEventSource

## SYNOPSIS
Adds a CloudWatchEvent Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMCloudWatchEventEventSource [-LogicalId] <String> -Pattern <Object> [-JSONInput <String>]
 [-InputPath <String>]
```

## DESCRIPTION
The object describing an event source with type CloudWatchEvent.

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

### -Pattern
Required.
Pattern describing which CloudWatch events trigger the function.
Only matching events trigger the function.

http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html

```yaml
Type: Object
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

### -InputPath
JSONPath describing the part of the event to pass to the function.

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

### Vaporshell.Serverless.EventSource.CloudWatchEvent

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#cloudwatchevent](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#cloudwatchevent)

