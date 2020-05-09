# Add-VSECSServiceLoadBalancer

## SYNOPSIS
Adds an AWS::ECS::Service.LoadBalancer resource property to the template.
The LoadBalancer property specifies details on a load balancer that is used with a service.

## SYNTAX

```
Add-VSECSServiceLoadBalancer [[-ContainerName] <Object>] [-ContainerPort] <Object>
 [[-LoadBalancerName] <Object>] [[-TargetGroupArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.LoadBalancer resource property to the template.
The LoadBalancer property specifies details on a load balancer that is used with a service.

If the service is using the ECS deployment controller, you are limited to one load balancer or target group.

If the service is using the CODE_DEPLOY deployment controller, the service is required to use either an Application Load Balancer or Network Load Balancer.
When you are creating an AWS CodeDeploy deployment group, you specify two target groups (referred to as a targetGroupPair.
Each target group binds to a separate task set in the deployment.
The load balancer can also have up to two listeners, a required listener for production traffic and an optional listener that allows you to test new revisions of the service before routing production traffic to it.

Services with tasks that use the awsvpc network mode (for example, those with the Fargate launch type only support Application Load Balancers and Network Load Balancers.
Classic Load Balancers are not supported.
Also, when you create any target groups for these services, you must choose ip as the target type, not instance.
Tasks that use the awsvpc network mode are associated with an elastic network interface, not an Amazon EC2 instance.

## PARAMETERS

### -ContainerName
The name of the container as it appears in a container definition to associate with the load balancer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containername
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

### -ContainerPort
The port on the container to associate with the load balancer.
This port must correspond to a containerPort in the task definition the tasks in the service are using.
For tasks that use the EC2 launch type, the container instance they are launched on must allow ingress traffic on the hostPort of the port mapping.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containerport
PrimitiveType: Integer
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

### -LoadBalancerName
The name of the load balancer to associate with the Amazon ECS service or task set.
A load balancer name is only specified when using a Classic Load Balancer.
If you are using an Application Load Balancer or a Network Load Balancer the load balancer name parameter should be omitted.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-loadbalancername
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

### -TargetGroupArn
The full Amazon Resource Name ARN of the Elastic Load Balancing target group or groups associated with a service or task set.
A target group ARN is only specified when using an Application Load Balancer or Network Load Balancer.
If you are using a Classic Load Balancer the target group ARN should be omitted.
For services using the ECS deployment controller, you can specify one or multiple target groups.
For more information, see Registering Multiple Target Groups with a Service: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html in the *Amazon Elastic Container Service Developer Guide*.
For services using the CODE_DEPLOY deployment controller, you are required to define two target groups for the load balancer.
For more information, see Blue/Green Deployment with CodeDeploy: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html in the *Amazon Elastic Container Service Developer Guide*.
If your service's task definition uses the awsvpc network mode which is required for the Fargate launch type, you must choose ip as the target type, not instance, when creating your target groups because tasks that use the awsvpc network mode are associated with an elastic network interface, not an Amazon EC2 instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-targetgrouparn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.Service.LoadBalancer
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html)

