---
layout: glossary
title: New-SAMApi
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# New-SAMApi

## SYNOPSIS
Adds an AWS::Serverless::Api resource to the template

## SYNTAX

### DefinitionUri (Default)
```
New-SAMApi [-LogicalId] <String> -StageName <Object> -DefinitionUri <Object>
 [-DescripCacheClusterEnabledtion <Boolean>] [-CacheClusterSize <String>] [-Variables <Hashtable>]
 [<CommonParameters>]
```

### DefinitionBody
```
New-SAMApi [-LogicalId] <String> -StageName <Object> -DefinitionBody <String>
 [-DescripCacheClusterEnabledtion <Boolean>] [-CacheClusterSize <String>] [-Variables <Hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a collection of Amazon API Gateway resources and methods that can be invoked through HTTPS endpoints.

An AWS::Serverless::Api resource need not be explicitly added to a AWS Serverless Application Definition template.
A resource of this type is implicitly created from the union of Api events defined on AWS::Serverless::Function resources defined in the template that do not refer to an AWS::Serverless::Api resource.
An AWS::Serverless::Api resource should be used to define and document the API using Swagger, which provides more ability to configure the underlying Amazon API Gateway resources.

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

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

### -StageName
Required.
The name of the stage, which API Gateway uses as the first path segment in the invoke Uniform Resource Identifier (URI).

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

### -DefinitionUri
Required.
S3 URI or location to the Swagger document describing the API.
Either one of DefinitionUri or DefinitionBody must be specified.

```yaml
Type: Object
Parameter Sets: DefinitionUri
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefinitionBody
Required.
Swagger specification that describes your API.
Either one of DefinitionUri or DefinitionBody must be specified.

```yaml
Type: String
Parameter Sets: DefinitionBody
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DescripCacheClusterEnabledtion
{{Fill DescripCacheClusterEnabledtion Description}}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -CacheClusterSize
The stage's cache cluster size.

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

### -Variables
A hashtable (string to string map) that defines the stage variables, where the variable name is the key and the variable value is the value.
Variable names are limited to alphanumeric characters.
Values must match the following regular expression: \[A-Za-z0-9._~:/?#&amp;=,-\]+.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.Api

## NOTES
Return values  

Ref
When the logical ID of this resource is provided to the Ref intrinsic function, it returns the resource name of the underlying API Gateway RestApi.

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction)

