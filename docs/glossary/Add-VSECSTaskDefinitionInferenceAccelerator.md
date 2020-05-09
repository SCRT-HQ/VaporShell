# Add-VSECSTaskDefinitionInferenceAccelerator

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.InferenceAccelerator resource property to the template.
Details on an Elastic Inference accelerator.
For more information, see Working with Amazon Elastic Inference on Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSTaskDefinitionInferenceAccelerator [[-DeviceName] <Object>] [[-DevicePolicy] <Object>]
 [[-DeviceType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.InferenceAccelerator resource property to the template.
Details on an Elastic Inference accelerator.
For more information, see Working with Amazon Elastic Inference on Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html in the *Amazon Elastic Container Service Developer Guide*.

## PARAMETERS

### -DeviceName
The Elastic Inference accelerator device name.
The deviceName must also be referenced in a container definition as a ResourceRequirement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html#cfn-ecs-taskdefinition-inferenceaccelerator-devicename
PrimitiveType: String
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

### -DevicePolicy
*Update requires*: Replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html#cfn-ecs-taskdefinition-inferenceaccelerator-devicepolicy
PrimitiveType: String
UpdateType: Immutable

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

### -DeviceType
The Elastic Inference accelerator type to use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html#cfn-ecs-taskdefinition-inferenceaccelerator-devicetype
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.ECS.TaskDefinition.InferenceAccelerator
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html)

