---
layout: glossary
title: Add-SAMS3EventSource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMS3EventSource

## SYNOPSIS
Adds a S3 Event Source to a Serverless Application Model resource

## SYNTAX

```
Add-SAMS3EventSource [-LogicalId] <String> -Bucket <Object> -Events <String[]> [-Filter <Object>]
```

## DESCRIPTION
The object describing an event source with type S3.

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

### -Bucket
Required.
S3 bucket name.
Use either a string or an intrinsic function.

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

### -Events
Required.
See Amazon S3 supported event types for valid values.
Valid options are: "s3:ObjectCreated:*","s3:ObjectCreated:Put","s3:ObjectCreated:Post","s3:ObjectCreated:Copy","s3:ObjectCreated:CompleteMultipartUpload","s3:ObjectRemoved:*","s3:ObjectRemoved:Delete","s3:ObjectRemoved:DeleteMarkerCreated","s3:ReducedRedundancyLostObject"

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filter
Rules to filter events on.
Use Add-VSS3BucketNotificationConfiguration as the value for this parameter.

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

## INPUTS

## OUTPUTS

### VaporShell.Serverless.EventSource.S3

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3)

