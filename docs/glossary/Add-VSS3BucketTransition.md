---
layout: glossary
title: Add-VSS3BucketTransition
categories: glossary
---

# Add-VSS3BucketTransition

## SYNOPSIS
Adds an AWS::S3::Bucket.Transition resource property to the template

## SYNTAX

```
Add-VSS3BucketTransition [-StorageClass] <Object> [[-TransitionDate] <Object>] [[-TransitionInDays] <Int32>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.Transition resource property to the template

## PARAMETERS

### -StorageClass
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-storageclass    
PrimitiveType: String    
Required: True    
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

### -TransitionDate
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitiondate    
PrimitiveType: Timestamp    
Required: False    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TransitionInDays
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitionindays    
PrimitiveType: Integer    
Required: False    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.Transition

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html)

