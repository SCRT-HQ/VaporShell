# Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the reference data source by providing the source information (Amazon S3 bucket name and object key name, the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource [-ReferenceSchema] <Object>
 [[-TableName] <Object>] [[-S3ReferenceDataSource] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceDataSource resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the reference data source by providing the source information (Amazon S3 bucket name and object key name, the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ReferenceSchema
Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.

Type: ReferenceSchema
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-referenceschema
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
The name of the in-application table to create.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-tablename
PrimitiveType: String
UpdateType: Immutable

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
A Kinesis Data Analytics application loads reference data only once.
If the data changes, you call the UpdateApplication: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_UpdateApplication.html operation to trigger reloading of data into your application.

Type: S3ReferenceDataSource
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-s3referencedatasource
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

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.ReferenceDataSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html)

