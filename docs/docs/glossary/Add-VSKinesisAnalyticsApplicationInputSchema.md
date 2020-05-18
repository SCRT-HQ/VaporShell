# Add-VSKinesisAnalyticsApplicationInputSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.InputSchema resource property to the template.
Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInputSchema [[-RecordEncoding] <Object>] [-RecordColumns] <Object>
 [-RecordFormat] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.InputSchema resource property to the template.
Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.

Also used to describe the format of the reference data source.

## PARAMETERS

### -RecordEncoding
Specifies the encoding of the records in the streaming source.
For example, UTF-8.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordencoding
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordcolumns
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordformat
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

### Vaporshell.Resource.KinesisAnalytics.Application.InputSchema
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html)

