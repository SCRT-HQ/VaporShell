---
layout: pagenodesc
title: Add-VSS3BucketCorsRule
category: glossary
---

# Add-VSS3BucketCorsRule

## SYNOPSIS
Adds an AWS::S3::Bucket.CorsRule resource property to the template

## SYNTAX

```
Add-VSS3BucketCorsRule [[-AllowedHeaders] <Object>] [-AllowedMethods] <Object> [-AllowedOrigins] <Object>
 [[-ExposedHeaders] <Object>] [[-Id] <Object>] [[-MaxAge] <Int32>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.CorsRule resource property to the template

## PARAMETERS

### -AllowedHeaders
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedheaders
DuplicatesAllowed: False
PrimitiveItemType: String
Required: False
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedMethods
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedmethods
DuplicatesAllowed: False
PrimitiveItemType: String
Required: True
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedOrigins
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedorigins
DuplicatesAllowed: False
PrimitiveItemType: String
Required: True
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExposedHeaders
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-exposedheaders
DuplicatesAllowed: False
PrimitiveItemType: String
Required: False
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-id
PrimitiveType: String
Required: False
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxAge
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-maxage
PrimitiveType: Integer
Required: False
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.CorsRule

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html)

