# Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceSchema resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema [[-RecordEncoding] <Object>]
 [-RecordColumns] <Object> [-RecordFormat] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceSchema resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RecordEncoding
Specifies the encoding of the records in the streaming source.
For example, UTF-8.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordencoding
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

### -RecordColumns
A list of RecordColumn objects.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordcolumns
ItemType: RecordColumn
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

### -RecordFormat
Specifies the format of the records on the streaming source.

Type: RecordFormat
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordformat
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

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.ReferenceSchema
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html)

