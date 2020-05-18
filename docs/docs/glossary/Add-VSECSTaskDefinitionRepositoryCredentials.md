# Add-VSECSTaskDefinitionRepositoryCredentials

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.RepositoryCredentials resource property to the template.
The RepositoryCredentials property specifies the repository credentials for private registry authentication.

## SYNTAX

```
Add-VSECSTaskDefinitionRepositoryCredentials [[-CredentialsParameter] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.RepositoryCredentials resource property to the template.
The RepositoryCredentials property specifies the repository credentials for private registry authentication.

## PARAMETERS

### -CredentialsParameter
The Amazon Resource Name ARN of the secret containing the private repository credentials.
When you are using the Amazon ECS API, AWS CLI, or AWS SDK, if the secret exists in the same Region as the task that you are launching then you can use either the full ARN or the name of the secret.
When you are using the AWS Management Console, you must specify the full ARN of the secret.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html#cfn-ecs-taskdefinition-repositorycredentials-credentialsparameter
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.RepositoryCredentials
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html)

