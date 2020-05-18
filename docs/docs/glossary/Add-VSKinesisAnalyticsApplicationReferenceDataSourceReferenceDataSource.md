# Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template.
Describes the reference data source by providing the source information (S3 bucket name and object key name, the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource [-ReferenceSchema] <Object>
 [[-TableName] <Object>] [[-S3ReferenceDataSource] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template.
Describes the reference data source by providing the source information (S3 bucket name and object key name, the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.

## PARAMETERS

### -ReferenceSchema
Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.

Type: ReferenceSchema
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-referenceschema
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

### -TableName
Name of the in-application table to create.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-tablename
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

### -S3ReferenceDataSource
Identifies the S3 bucket and object that contains the reference data.
Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.
An Amazon Kinesis Analytics application loads reference data only once.
If the data changes, you call the UpdateApplication operation to trigger reloading of data into your application.

Type: S3ReferenceDataSource
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-s3referencedatasource
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

### Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceDataSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html)

