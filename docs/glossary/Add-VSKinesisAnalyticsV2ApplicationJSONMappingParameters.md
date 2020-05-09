# Add-VSKinesisAnalyticsV2ApplicationJSONMappingParameters

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.JSONMappingParameters resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, provides additional mapping information when JSON is the record format on the streaming source.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationJSONMappingParameters [-RecordRowPath] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.JSONMappingParameters resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, provides additional mapping information when JSON is the record format on the streaming source.

## PARAMETERS

### -RecordRowPath
The path to the top-level parent that contains the records.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html#cfn-kinesisanalyticsv2-application-jsonmappingparameters-recordrowpath
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.Application.JSONMappingParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html)

