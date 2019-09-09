# Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.CSVMappingParameters resource property to the template.
For an SQL-based application, provides additional mapping information when the record format uses delimiters, such as CSV.
For example, the following sample records use CSV format, where the records use the *'n'* as the row delimiter and a comma ("," as the column delimiter:

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters [-RecordRowDelimiter] <Object>
 [-RecordColumnDelimiter] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.CSVMappingParameters resource property to the template.
For an SQL-based application, provides additional mapping information when the record format uses delimiters, such as CSV.
For example, the following sample records use CSV format, where the records use the *'n'* as the row delimiter and a comma ("," as the column delimiter:

"name1", "address1"

"name2", "address2"

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RecordRowDelimiter
The row delimiter.
For example, in a CSV format, *'n'* is the typical row delimiter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordrowdelimiter
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

### -RecordColumnDelimiter
The column delimiter.
For example, in a CSV format, a comma "," is the typical column delimiter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordcolumndelimiter
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

### Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.CSVMappingParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html)

