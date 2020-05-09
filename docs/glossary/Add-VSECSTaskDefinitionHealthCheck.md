# Add-VSECSTaskDefinitionHealthCheck

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.HealthCheck resource property to the template.
The HealthCheck property specifies an object representing a container health check.
Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile.

## SYNTAX

```
Add-VSECSTaskDefinitionHealthCheck [-Command] <Object> [[-Interval] <Object>] [[-Retries] <Object>]
 [[-StartPeriod] <Object>] [[-Timeout] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.HealthCheck resource property to the template.
The HealthCheck property specifies an object representing a container health check.
Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile.

The following are notes about container health check support:

+ Container health checks require version 1.17.0 or greater of the Amazon ECS container agent.
For more information, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html.

+ Container health checks are supported for Fargate tasks if you are using platform version 1.1.0 or greater.
For more information, see AWS Fargate Platform Versions: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html.

+ Container health checks are not supported for tasks that are part of a service that is configured to use a Classic Load Balancer.

## PARAMETERS

### -Command
A string array representing the command that the container runs to determine if it is healthy.
The string array must start with CMD to execute the command arguments directly, or CMD-SHELL to run the command with the container's default shell.
For example:
"CMD-SHELL", "curl -f http://localhost/ || exit 1" \]
An exit code of 0 indicates success, and non-zero exit code indicates failure.
For more information, see HealthCheck in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-command
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Interval
The time period in seconds between each health check execution.
You may specify between 5 and 300 seconds.
The default value is 30 seconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-interval
PrimitiveType: Integer
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

### -Retries
The number of times to retry a failed health check before the container is considered unhealthy.
You may specify between 1 and 10 retries.
The default value is 3.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-retries
PrimitiveType: Integer
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

### -StartPeriod
The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries.
You may specify between 0 and 300 seconds.
The startPeriod is disabled by default.
If a health check succeeds within the startPeriod, then the container is considered healthy and any subsequent failures count toward the maximum number of retries.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-startperiod
PrimitiveType: Integer
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

### -Timeout
The time period in seconds to wait for a health check to succeed before it is considered a failure.
You may specify between 2 and 60 seconds.
The default value is 5.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-timeout
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.HealthCheck
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html)

