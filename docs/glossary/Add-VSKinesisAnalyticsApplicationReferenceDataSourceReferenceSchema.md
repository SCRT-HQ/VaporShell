# Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema resource property to the template.
The ReferenceSchema property type specifies the format of the data in the reference source for a SQL-based Amazon Kinesis Data Analytics application.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceSchema [[-RecordEncoding] <Object>]
 [-RecordColumns] <Object> [-RecordFormat] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema resource property to the template.
The ReferenceSchema property type specifies the format of the data in the reference source for a SQL-based Amazon Kinesis Data Analytics application.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RecordEncoding
Specifies the encoding of the records in the reference source.
For example, UTF-8.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordencoding
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordcolumns
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
Specifies the format of the records on the reference source.

Type: RecordFormat
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordformat
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

### Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceSchema
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html)

