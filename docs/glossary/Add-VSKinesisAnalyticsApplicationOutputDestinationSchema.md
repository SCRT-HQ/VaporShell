# Add-VSKinesisAnalyticsApplicationOutputDestinationSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationOutput.DestinationSchema resource property to the template.
Describes the data format when records are written to the destination.
For more information, see Configuring Application Output: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html.

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationOutputDestinationSchema [[-RecordFormatType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationOutput.DestinationSchema resource property to the template.
Describes the data format when records are written to the destination.
For more information, see Configuring Application Output: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RecordFormatType
Specifies the format of the records on the output stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html#cfn-kinesisanalytics-applicationoutput-destinationschema-recordformattype
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.DestinationSchema
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html)

