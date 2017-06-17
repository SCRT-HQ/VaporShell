---
layout: pagenodesc
title: Add-VSKinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
category: glossary
---

# Add-VSKinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.RedshiftDestinationConfiguration resource property to the template

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration [[-CloudWatchLoggingOptions] <Object>]
 [-ClusterJDBCURL] <Object> [-CopyCommand] <Object> [-Password] <Object> [-RoleARN] <Object>
 [-S3Configuration] <Object> [-Username] <Object>
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.RedshiftDestinationConfiguration resource property to the template

## PARAMETERS

### -CloudWatchLoggingOptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-cloudwatchloggingoptions
Required: False
Type: CloudWatchLoggingOptions
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

### -ClusterJDBCURL
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-clusterjdbcurl
PrimitiveType: String
Required: True
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

### -CopyCommand
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand
Required: True
Type: CopyCommand
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

### -Password
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-password
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

### -RoleARN
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-rolearn
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

### -S3Configuration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-s3configuration
Required: True
Type: S3DestinationConfiguration
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

### -Username
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-usename
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.RedshiftDestinationConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html)

