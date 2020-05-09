# Add-VSKinesisAnalyticsApplicationCSVMappingParameters

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.CSVMappingParameters resource property to the template.
Provides additional mapping information when the record format uses delimiters, such as CSV.
For example, the following sample records use CSV format, where the records use the *'n'* as the row delimiter and a comma ("," as the column delimiter:

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationCSVMappingParameters [-RecordRowDelimiter] <Object>
 [-RecordColumnDelimiter] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.CSVMappingParameters resource property to the template.
Provides additional mapping information when the record format uses delimiters, such as CSV.
For example, the following sample records use CSV format, where the records use the *'n'* as the row delimiter and a comma ("," as the column delimiter:

"name1", "address1"

"name2", "address2"

## PARAMETERS

### -RecordRowDelimiter
Row delimiter.
For example, in a CSV format, *'n'* is the typical row delimiter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html#cfn-kinesisanalytics-application-csvmappingparameters-recordrowdelimiter
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
Column delimiter.
For example, in a CSV format, a comma "," is the typical column delimiter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html#cfn-kinesisanalytics-application-csvmappingparameters-recordcolumndelimiter
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

### Vaporshell.Resource.KinesisAnalytics.Application.CSVMappingParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html)

