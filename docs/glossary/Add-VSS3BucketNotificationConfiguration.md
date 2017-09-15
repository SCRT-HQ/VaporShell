---
layout: glossary
title: Add-VSS3BucketNotificationConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSS3BucketNotificationConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.NotificationConfiguration resource property to the template

## SYNTAX

```
Add-VSS3BucketNotificationConfiguration [[-LambdaConfigurations] <Object>] [[-QueueConfigurations] <Object>]
 [[-TopicConfigurations] <Object>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.NotificationConfiguration resource property to the template

## PARAMETERS

### -LambdaConfigurations
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig    
DuplicatesAllowed: False    
ItemType: LambdaConfiguration    
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

### -QueueConfigurations
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-queueconfig    
DuplicatesAllowed: False    
ItemType: QueueConfiguration    
Required: False    
Type: List    
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

### -TopicConfigurations
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-topicconfig    
DuplicatesAllowed: False    
ItemType: TopicConfiguration    
Required: False    
Type: List    
UpdateType: Mutable

```yaml
Type: Object
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

### VaporShell.Resource.S3.Bucket.NotificationConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html)

