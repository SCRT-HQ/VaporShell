# Add-VSKinesisAnalyticsApplicationReferenceDataSourceRecordFormat

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.RecordFormat resource property to the template.
Describes the record format and relevant mapping information that should be applied to schematize the records on the stream.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationReferenceDataSourceRecordFormat [[-MappingParameters] <Object>]
 [-RecordFormatType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.RecordFormat resource property to the template.
Describes the record format and relevant mapping information that should be applied to schematize the records on the stream.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MappingParameters
When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format such as JSON, CSV, or record fields delimited by some delimiter on the streaming source.

Type: MappingParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-mappingparameters
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

### -RecordFormatType
The type of record format.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-recordformattype
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

### Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.RecordFormat
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html)

