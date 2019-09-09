# Add-VSECSServiceDeploymentConfiguration

## SYNOPSIS
Adds an AWS::ECS::Service.DeploymentConfiguration resource property to the template.
The DeploymentConfiguration property specifies optional deployment parameters that control how many tasks run during the deploymentand the ordering of stopping and starting tasks.

## SYNTAX

```
Add-VSECSServiceDeploymentConfiguration [[-MaximumPercent] <Int32>] [[-MinimumHealthyPercent] <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.DeploymentConfiguration resource property to the template.
The DeploymentConfiguration property specifies optional deployment parameters that control how many tasks run during the deploymentand the ordering of stopping and starting tasks.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MaximumPercent
If a service is using the rolling update ECS deployment type, the **maximum percent** parameter represents an upper limit on the number of tasks in a service that are allowed in the RUNNING or PENDING state during a deployment, as a percentage of the desired number of tasks rounded down to the nearest integer, and while any container instances are in the DRAINING state if the service contains tasks using the EC2 launch type.
This parameter enables you to define the deployment batch size.
For example, if your service has a desired number of four tasks and a maximum percent value of 200%, the scheduler may start four new tasks before stopping the four older tasks provided that the cluster resources required to do this are available.
The default value for maximum percent is 200%.
If a service is using the blue/green CODE_DEPLOY or EXTERNAL deployment types and tasks that use the EC2 launch type, the **maximum percent** value is set to the default value and is used to define the upper limit on the number of the tasks in the service that remain in the RUNNING state while the container instances are in the DRAINING state.
If the tasks in the service use the Fargate launch type, the maximum percent value is not used, although it is returned when describing your service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumHealthyPercent
If a service is using the rolling update ECS deployment type, the **minimum healthy percent** represents a lower limit on the number of tasks in a service that must remain in the RUNNING state during a deployment, as a percentage of the desired number of tasks rounded up to the nearest integer, and while any container instances are in the DRAINING state if the service contains tasks using the EC2 launch type.
This parameter enables you to deploy without using additional cluster capacity.
For example, if your service has a desired number of four tasks and a minimum healthy percent of 50%, the scheduler may stop two existing tasks to free up cluster capacity before starting two new tasks.
Tasks for services that *do not* use a load balancer are considered healthy if they are in the RUNNING state; tasks for services that *do* use a load balancer are considered healthy if they are in the RUNNING state and they are reported as healthy by the load balancer.
The default value for minimum healthy percent is 100%.
If a service is using the blue/green CODE_DEPLOY or EXTERNAL deployment types and tasks that use the EC2 launch type, the **minimum healthy percent** value is set to the default value and is used to define the lower limit on the number of the tasks in the service that remain in the RUNNING state while the container instances are in the DRAINING state.
If the tasks in the service use the Fargate launch type, the minimum healthy percent value is not used, although it is returned when describing your service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.Service.DeploymentConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html)

