# Add-VSS3BucketMetricsConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.MetricsConfiguration resource property to the template.
Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID from an Amazon S3 bucket.
If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration.
If you don't include the elements you want to keep, they are erased.
For more information, see  PUT Bucket metrics: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html in the *Amazon Simple Storage Service API Reference*.

## SYNTAX

```
Add-VSS3BucketMetricsConfiguration [-Id] <Object> [[-Prefix] <Object>] [[-TagFilters] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.MetricsConfiguration resource property to the template.
Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID from an Amazon S3 bucket.
If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration.
If you don't include the elements you want to keep, they are erased.
For more information, see  PUT Bucket metrics: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html in the *Amazon Simple Storage Service API Reference*.

## PARAMETERS

### -Id
The ID used to identify the metrics configuration.
This can be any value you choose that helps you identify your metrics configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-id
PrimitiveType: String
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

### -Prefix
The prefix that an object must have to be included in the metrics results.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-prefix
PrimitiveType: String
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

### -TagFilters
Specifies a list of tag filters to use as a metrics configuration filter.
The metrics configuration includes only objects that meet the filter's criteria.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-tagfilters
DuplicatesAllowed: False
ItemType: TagFilter
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.MetricsConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html)

