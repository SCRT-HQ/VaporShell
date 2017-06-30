---
layout: glossary
title: Add-VSS3BucketCorsConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSS3BucketCorsConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template

## SYNTAX

```
Add-VSS3BucketCorsConfiguration [-CorsRules] <Object>
```

## DESCRIPTION
Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template

## PARAMETERS

### -CorsRules
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html#cfn-s3-bucket-cors-corsrule    
DuplicatesAllowed: False    
ItemType: CorsRule    
Required: True    
Type: List    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.CorsConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html)

