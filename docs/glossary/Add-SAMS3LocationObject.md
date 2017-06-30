---
layout: glossary
title: Add-SAMS3LocationObject
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-SAMS3LocationObject

## SYNOPSIS
Specifies the location of an S3 object as a dictionary containing Bucket, Key, and optional Version properties.

## SYNTAX

```
Add-SAMS3LocationObject [-Bucket] <String> [-Key] <String> [[-Version] <String>]
```

## DESCRIPTION
Specifies the location of an S3 object as a dictionary containing Bucket, Key, and optional Version properties.

## PARAMETERS

### -Bucket
Required.
Example: 'mybucket-name'

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

### -Key
Required.
Example: 'code.zip'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
Optional.
Example: '121212'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.S3LocationObject

## NOTES

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3-location-object](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3-location-object)

