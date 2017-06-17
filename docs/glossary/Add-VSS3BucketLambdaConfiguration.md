---
layout: glossary
title: Add-VSS3BucketLambdaConfiguration
categories: glossary
---

# Add-VSS3BucketLambdaConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.LambdaConfiguration resource property to the template

## SYNTAX

```
Add-VSS3BucketLambdaConfiguration [-Event] <Object> [[-Filter] <Object>] [-Function] <Object>
```

## DESCRIPTION
Adds an AWS::S3::Bucket.LambdaConfiguration resource property to the template

## PARAMETERS

### -Event
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-event    
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

### -Filter
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-filter    
Required: False    
Type: NotificationFilter    
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

### -Function
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-function    
PrimitiveType: String    
Required: True    
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.LambdaConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html)

