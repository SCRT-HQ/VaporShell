# Add-VSIoTAnalyticsDatasetGlueConfiguration

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.GlueConfiguration resource property to the template.
Configuration information for coordination with AWS Glue, a fully managed extract, transform and load (ETL service.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetGlueConfiguration [-TableName] <Object> [-DatabaseName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.GlueConfiguration resource property to the template.
Configuration information for coordination with AWS Glue, a fully managed extract, transform and load (ETL service.

## PARAMETERS

### -TableName
The name of the table in your AWS Glue Data Catalog that is used to perform the ETL operations.
An AWS Glue Data Catalog table contains partitioned data and descriptions of data sources and targets.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-tablename
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

### -DatabaseName
The name of the database in your AWS Glue Data Catalog in which the table is located.
An AWS Glue Data Catalog database contains metadata tables.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-databasename
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTAnalytics.Dataset.GlueConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html)

