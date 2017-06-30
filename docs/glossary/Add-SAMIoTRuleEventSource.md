---
layout: glossary
title: Add-SAMIoTRuleEventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMIoTRuleEventSource

## SYNOPSIS
Adds a IoTRule Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMIoTRuleEventSource [-LogicalId] <String> -Sql <Object> [-AwsIotSqlVersion <String>]
```

## DESCRIPTION
The object describing an event source with type IoTRule.

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

### -Sql
Required.
The SQL statement that queries the topic.
For more information, see Rules for AWS IoT in the AWS IoT Developer Guide: http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference

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

### -AwsIotSqlVersion
The version of the SQL rules engine to use when evaluating the rule.

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

### Vaporshell.Serverless.EventSource.IoTRule

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#iotrule](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#iotrule)

