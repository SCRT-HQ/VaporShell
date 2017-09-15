---
layout: glossary
title: Get-VSS3BucketLocation
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Get-VSS3BucketLocation

## SYNOPSIS
Gets the location of a specific S3 bucket

## SYNTAX

```
Get-VSS3BucketLocation [-BucketName] <String> [-ProfileName <String>]
```

## PARAMETERS

### -BucketName
The name of the bucket you are trying to locate.

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

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

