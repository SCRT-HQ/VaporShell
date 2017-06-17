---
layout: glossary
title: Add-VSKinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
categories: glossary
---

# Add-VSKinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration resource property to the template

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration [-BufferingHints] <Object>
 [[-CloudWatchLoggingOptions] <Object>] [-DomainARN] <Object> [-IndexName] <Object>
 [-IndexRotationPeriod] <Object> [-RetryOptions] <Object> [-RoleARN] <Object> [-S3BackupMode] <Object>
 [-S3Configuration] <Object> [-TypeName] <Object>
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration resource property to the template

## PARAMETERS

### -BufferingHints
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-bufferinghints    
Required: True    
Type: ElasticsearchBufferingHints    
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

### -CloudWatchLoggingOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-cloudwatchloggingoptions    
Required: False    
Type: CloudWatchLoggingOptions    
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

### -DomainARN
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-domainarn    
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

### -IndexName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-indexname    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IndexRotationPeriod
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-indexrotationperiod    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetryOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions    
Required: True    
Type: ElasticsearchRetryOptions    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-rolearn    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3BackupMode
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-s3backupmode    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3Configuration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-s3configuration    
Required: True    
Type: S3DestinationConfiguration    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TypeName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-typename    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchDestinationConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html)

