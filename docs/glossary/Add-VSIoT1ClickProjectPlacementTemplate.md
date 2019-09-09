# Add-VSIoT1ClickProjectPlacementTemplate

## SYNOPSIS
Adds an AWS::IoT1Click::Project.PlacementTemplate resource property to the template.
In AWS CloudFormation, use the PlacementTemplate property type to define the template for an AWS IoT 1-Click project.

## SYNTAX

```
Add-VSIoT1ClickProjectPlacementTemplate [[-DeviceTemplates] <Object>] [[-DefaultAttributes] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT1Click::Project.PlacementTemplate resource property to the template.
In AWS CloudFormation, use the PlacementTemplate property type to define the template for an AWS IoT 1-Click project.

PlacementTemplate is a property of the AWS::IoT1Click::Project resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeviceTemplates
An object specifying the DeviceTemplate: https://docs.aws.amazon.com/iot-1-click/latest/projects-apireference/API_DeviceTemplate.html for all placements using this PlacementTemplate: https://docs.aws.amazon.com/iot-1-click/latest/projects-apireference/API_PlacementTemplate.html template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-devicetemplates
PrimitiveType: Json
UpdateType: Immutable

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

### -DefaultAttributes
The default attributes key-value pairs to be applied to all placements using this template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-defaultattributes
PrimitiveType: Json
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT1Click.Project.PlacementTemplate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html)

