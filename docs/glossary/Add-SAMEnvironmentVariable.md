---
layout: glossary
title: Add-SAMEnvironmentVariable
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-SAMEnvironmentVariable

## SYNOPSIS
The object describing the environment properties of a function.

## SYNTAX

### Single (Default)
```
Add-SAMEnvironmentVariable [-Name] <String> [-Value] <Object> [<CommonParameters>]
```

### Hashtable
```
Add-SAMEnvironmentVariable [-Hashtable] <Hashtable> [<CommonParameters>]
```

## DESCRIPTION
The object describing the environment properties of a function.

## PARAMETERS

### -Hashtable
A hashtable of environment variables

```yaml
Type: Hashtable
Parameter Sets: Hashtable
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the environment variable

```yaml
Type: String
Parameter Sets: Single
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The value of the environment variable

```yaml
Type: Object
Parameter Sets: Single
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.EnvironmentVariable

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#environment-object](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#environment-object)

