# Add-VSECSTaskDefinitionSecret

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.Secret resource property to the template.
The Secret property specifies an object representing the secret to expose to your container.
For more information, see Specifying Sensitive Data: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSTaskDefinitionSecret [-Name] <Object> [-ValueFrom] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.Secret resource property to the template.
The Secret property specifies an object representing the secret to expose to your container.
For more information, see Specifying Sensitive Data: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html in the *Amazon Elastic Container Service Developer Guide*.

## PARAMETERS

### -Name
The name of the secret.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-name
PrimitiveType: String
UpdateType: Immutable

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

### -ValueFrom
The secret to expose to the container.
The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the AWS Systems Manager Parameter Store.
If the AWS Systems Manager Parameter Store parameter exists in the same Region as the task you are launching, then you can use either the full ARN or name of the parameter.
If the parameter exists in a different Region, then the full ARN must be specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-valuefrom
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

### Vaporshell.Resource.ECS.TaskDefinition.Secret
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html)

