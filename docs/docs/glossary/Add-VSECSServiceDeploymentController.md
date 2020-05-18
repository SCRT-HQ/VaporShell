# Add-VSECSServiceDeploymentController

## SYNOPSIS
Adds an AWS::ECS::Service.DeploymentController resource property to the template.
The deployment controller to use for the service.
For more information, see Amazon ECS Deployment Types: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSServiceDeploymentController [[-Type] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.DeploymentController resource property to the template.
The deployment controller to use for the service.
For more information, see Amazon ECS Deployment Types: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html in the *Amazon Elastic Container Service Developer Guide*.

## PARAMETERS

### -Type
The deployment controller type to use.
There are three deployment controller types available:
ECS
The rolling update ECS deployment type involves replacing the current running version of the container with the latest version.
The number of containers Amazon ECS adds or removes from the service during a rolling update is controlled by adjusting the minimum and maximum number of healthy tasks allowed during a service deployment, as specified in the DeploymentConfiguration: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeploymentConfiguration.html.
CODE_DEPLOY
The blue/green CODE_DEPLOY deployment type uses the blue/green deployment model powered by AWS CodeDeploy, which allows you to verify a new deployment of a service before sending production traffic to it.
EXTERNAL
The external EXTERNAL deployment type enables you to use any third-party deployment controller for full control over the deployment process for an Amazon ECS service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html#cfn-ecs-service-deploymentcontroller-type
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

### Vaporshell.Resource.ECS.Service.DeploymentController
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html)

