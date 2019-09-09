# Add-VSIoTAnalyticsDatasetIotEventsDestinationConfiguration

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.IotEventsDestinationConfiguration resource property to the template.
Configuration information for delivery of data set contents to AWS IoT Events.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetIotEventsDestinationConfiguration [-InputName] <Object> [-RoleArn] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.IotEventsDestinationConfiguration resource property to the template.
Configuration information for delivery of data set contents to AWS IoT Events.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputName
The name of the AWS IoT Events input to which data set contents are delivered.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-inputname
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

### -RoleArn
The ARN of the role which grants AWS IoT Analytics permission to deliver data set contents to an AWS IoT Events input.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-rolearn
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

### Vaporshell.Resource.IoTAnalytics.Dataset.IotEventsDestinationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html)

