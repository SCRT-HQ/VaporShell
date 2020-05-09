# Add-VSECSTaskDefinitionFirelensConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.FirelensConfiguration resource property to the template.
The FireLens configuration for the container.
This is used to specify and configure a log router for container logs.
For more information, see Custom Log Routing: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSTaskDefinitionFirelensConfiguration [[-Options] <Hashtable>] [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.FirelensConfiguration resource property to the template.
The FireLens configuration for the container.
This is used to specify and configure a log router for container logs.
For more information, see Custom Log Routing: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html in the *Amazon Elastic Container Service Developer Guide*.

## PARAMETERS

### -Options
The options to use when configuring the log router.
This field is optional and can be used to add additional metadata, such as the task, task definition, cluster, and container instance details to the log event.
If specified, valid option keys are:
+ enable-ecs-log-metadata, which can be true or false
+ config-file-type, which can be s3 or file
+ config-file-value, which is either an S3 ARN or a file path

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html#cfn-ecs-taskdefinition-firelensconfiguration-options
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The log router to use.
The valid values are fluentd or fluentbit.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html#cfn-ecs-taskdefinition-firelensconfiguration-type
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.ECS.TaskDefinition.FirelensConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-firelensconfiguration.html)

