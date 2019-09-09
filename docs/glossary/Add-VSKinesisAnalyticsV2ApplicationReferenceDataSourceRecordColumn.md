# Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordColumn resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn [[-Mapping] <Object>] [-SqlType] <Object>
 [-Name] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordColumn resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.

Also used to describe the format of the reference data source.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Mapping
A reference to the data element in the streaming input or the reference data source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-mapping
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

### -SqlType
The type of column created in the in-application input stream or reference table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-sqltype
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

### -Name
The name of the column that is created in the in-application input stream or reference table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-name
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.RecordColumn
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html)

