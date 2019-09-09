# Add-VSOpsWorksLayerLoadBasedAutoScaling

## SYNOPSIS
Adds an AWS::OpsWorks::Layer.LoadBasedAutoScaling resource property to the template.
Describes a layer's load-based auto scaling configuration.

## SYNTAX

```
Add-VSOpsWorksLayerLoadBasedAutoScaling [[-DownScaling] <Object>] [[-Enable] <Boolean>] [[-UpScaling] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Layer.LoadBasedAutoScaling resource property to the template.
Describes a layer's load-based auto scaling configuration.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DownScaling
An AutoScalingThresholds object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-downscaling
Type: AutoScalingThresholds
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

### -Enable
Whether load-based auto scaling is enabled for the layer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-enable
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpScaling
An AutoScalingThresholds object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-upscaling
Type: AutoScalingThresholds
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.OpsWorks.Layer.LoadBasedAutoScaling
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html)

