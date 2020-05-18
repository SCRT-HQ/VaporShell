# Add-VSS3BucketLoggingConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.LoggingConfiguration resource property to the template.
Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket.
For more information, see PUT Bucket logging: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html in the *Amazon Simple Storage Service API Reference*.

## SYNTAX

```
Add-VSS3BucketLoggingConfiguration [[-DestinationBucketName] <Object>] [[-LogFilePrefix] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.LoggingConfiguration resource property to the template.
Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket.
For more information, see PUT Bucket logging: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html in the *Amazon Simple Storage Service API Reference*.

## PARAMETERS

### -DestinationBucketName
The name of the bucket where Amazon S3 should store server access log files.
You can store log files in any bucket that you own.
By default, logs are stored in the bucket where the LoggingConfiguration property is defined.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-destinationbucketname
PrimitiveType: String
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

### -LogFilePrefix
A prefix for all log object keys.
If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-logfileprefix
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.LoggingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html)

