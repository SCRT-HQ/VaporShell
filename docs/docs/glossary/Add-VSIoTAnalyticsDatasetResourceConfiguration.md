# Add-VSIoTAnalyticsDatasetResourceConfiguration

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.ResourceConfiguration resource property to the template.
The configuration of the resource used to execute the containerAction.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetResourceConfiguration [-VolumeSizeInGB] <Object> [-ComputeType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.ResourceConfiguration resource property to the template.
The configuration of the resource used to execute the containerAction.

## PARAMETERS

### -VolumeSizeInGB
The size, in GB, of the persistent storage available to the resource instance used to execute the containerAction min: 1, max: 50.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-volumesizeingb
PrimitiveType: Integer
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

### -ComputeType
The type of the compute resource used to execute the containerAction.
Possible values are: ACU_1 vCPU=4, memory=16 GiB or ACU_2 vCPU=8, memory=32 GiB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-computetype
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

### Vaporshell.Resource.IoTAnalytics.Dataset.ResourceConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html)

