# Add-VSIoTAnalyticsDatasetS3DestinationConfiguration

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template.
Configuration information for delivery of data set contents to Amazon S3.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetS3DestinationConfiguration [[-GlueConfiguration] <Object>] [-Bucket] <Object>
 [-Key] <Object> [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template.
Configuration information for delivery of data set contents to Amazon S3.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -GlueConfiguration
Configuration information for coordination with the AWS Glue ETL extract, transform and load service.

Type: GlueConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-glueconfiguration
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

### -Bucket
The name of the Amazon S3 bucket to which data set contents are delivered.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-bucket
PrimitiveType: String
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

### -Key
The key of the data set contents object.
Each object in an Amazon S3 bucket has a key that is its unique identifier within the bucket each object in a bucket has exactly one key.
To produce a unique key, you can use "!{iotanalytics:scheduledTime}" to insert the time of the scheduled SQL query run, or "!{iotanalytics:versioned} to insert a unique hash identifying the data set, for example: "/DataSet/!{iotanalytics:scheduledTime}/!{iotanalytics:versioned}.csv".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-key
PrimitiveType: String
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

### -RoleArn
The ARN of the role which grants AWS IoT Analytics permission to interact with your Amazon S3 and AWS Glue resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-rolearn
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTAnalytics.Dataset.S3DestinationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html)

