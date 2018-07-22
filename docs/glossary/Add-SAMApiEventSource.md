---
layout: glossary
title: Add-SAMApiEventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-SAMApiEventSource

## SYNOPSIS
Adds a Api Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMApiEventSource [-LogicalId] <String> -Path <Object> -Method <Object> [-RestApiId <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
The object describing an event source with type Api.

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

### -Path
Required.
Uri path for which this function is invoked.
MUST start with /.

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

### -Method
Required.
HTTP method for which this function is invoked.

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

### -RestApiId
Identifier of a RestApi resource which MUST contain an operation with the given path and method.
Typically, this is set to reference an AWS::Serverless::Api resource defined in this template.
If not defined, a default AWS::Serverless::Api resource is created using a generated Swagger document contains a union of all paths and methods defined by Api events defined in this template that do not specify a RestApiId.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.EventSource.Api

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#api](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#api)

