# Add-VSIoT1ClickProjectDeviceTemplate

## SYNOPSIS
Adds an AWS::IoT1Click::Project.DeviceTemplate resource property to the template.
In AWS CloudFormation, use the DeviceTemplate property type to define the template for an AWS IoT 1-Click project.

## SYNTAX

```
Add-VSIoT1ClickProjectDeviceTemplate [[-DeviceType] <Object>] [[-CallbackOverrides] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT1Click::Project.DeviceTemplate resource property to the template.
In AWS CloudFormation, use the DeviceTemplate property type to define the template for an AWS IoT 1-Click project.

DeviceTemplate is a property of the AWS::IoT1Click::Project resource.

## PARAMETERS

### -DeviceType
The device type, which currently must be "button".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-devicetype
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

### -CallbackOverrides
An optional AWS Lambda function to invoke instead of the default AWS Lambda function provided by the placement template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-callbackoverrides
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

### Vaporshell.Resource.IoT1Click.Project.DeviceTemplate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html)

