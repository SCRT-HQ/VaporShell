# Add-VSECSTaskDefinitionContainerDefinition

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.ContainerDefinition resource property to the template.
The ContainerDefinition property specifies a container definition.
Container definitions are used in task definitions to describe the different containers that are launched as part of a task.

## SYNTAX

```
Add-VSECSTaskDefinitionContainerDefinition [[-Command] <Object>] [[-Cpu] <Object>] [[-DependsOn] <Object>]
 [[-DisableNetworking] <Object>] [[-DnsSearchDomains] <Object>] [[-DnsServers] <Object>]
 [[-DockerLabels] <Hashtable>] [[-DockerSecurityOptions] <Object>] [[-EntryPoint] <Object>]
 [[-Environment] <Object>] [[-Essential] <Object>] [[-ExtraHosts] <Object>] [[-FirelensConfiguration] <Object>]
 [[-HealthCheck] <Object>] [[-Hostname] <Object>] [[-Image] <Object>] [[-Interactive] <Object>]
 [[-Links] <Object>] [[-LinuxParameters] <Object>] [[-LogConfiguration] <Object>] [[-Memory] <Object>]
 [[-MemoryReservation] <Object>] [[-MountPoints] <Object>] [[-Name] <Object>] [[-PortMappings] <Object>]
 [[-Privileged] <Object>] [[-PseudoTerminal] <Object>] [[-ReadonlyRootFilesystem] <Object>]
 [[-RepositoryCredentials] <Object>] [[-ResourceRequirements] <Object>] [[-Secrets] <Object>]
 [[-StartTimeout] <Object>] [[-StopTimeout] <Object>] [[-SystemControls] <Object>] [[-Ulimits] <Object>]
 [[-User] <Object>] [[-VolumesFrom] <Object>] [[-WorkingDirectory] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.ContainerDefinition resource property to the template.
The ContainerDefinition property specifies a container definition.
Container definitions are used in task definitions to describe the different containers that are launched as part of a task.

## PARAMETERS

### -Command
The command that is passed to the container.
This parameter maps to Cmd in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the COMMAND parameter to docker run: https://docs.docker.com/engine/reference/run/.
For more information, see https://docs.docker.com/engine/reference/builder/#cmd: https://docs.docker.com/engine/reference/builder/#cmd.
If there are multiple arguments, each argument should be a separated string in the array.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-command
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Cpu
The number of cpu units reserved for the container.
This parameter maps to CpuShares in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --cpu-shares option to docker run: https://docs.docker.com/engine/reference/run/.
This field is optional for tasks using the Fargate launch type, and the only requirement is that the total amount of CPU reserved for all containers within a task be lower than the task-level cpu value.
You can determine the number of CPU units that are available per EC2 instance type by multiplying the vCPUs listed for that instance type on the Amazon EC2 Instances: http://aws.amazon.com/ec2/instance-types/ detail page by 1,024.
Linux containers share unallocated CPU units with other containers on the container instance with the same ratio as their allocated amount.
For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time.
However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-cpu
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

### -DependsOn
The dependencies defined for container startup and shutdown.
A container can contain multiple dependencies.
When a dependency is defined for container startup, for container shutdown it is reversed.
For tasks using the EC2 launch type, the container instances require at least version 1.26.0 of the container agent to enable container dependencies.
However, we recommend using the latest container agent version.
For information about checking your agent version and updating to the latest version, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html in the *Amazon Elastic Container Service Developer Guide*.
If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the ecs-init package.
If your container instances are launched from version 20190301 or later, then they contain the required versions of the container agent and ecs-init.
For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.
For tasks using the Fargate launch type, the task or service requires platform version 1.3.0 or later.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dependson
DuplicatesAllowed: False
ItemType: ContainerDependency
Type: List
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

### -DisableNetworking
When this parameter is true, networking is disabled within the container.
This parameter maps to NetworkDisabled in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/.
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-disablenetworking
PrimitiveType: Boolean
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

### -DnsSearchDomains
A list of DNS search domains that are presented to the container.
This parameter maps to DnsSearch in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --dns-search option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnssearchdomains
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -DnsServers
A list of DNS servers that are presented to the container.
This parameter maps to Dns in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --dns option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnsservers
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerLabels
A key/value map of labels to add to the container.
This parameter maps to Labels in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --label option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter requires version 1.18 of the Docker Remote API or greater on your container instance.
To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockerlabels
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerSecurityOptions
A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems.
This field is not valid for containers in tasks using the Fargate launch type.
With Windows containers, this parameter can be used to reference a credential spec file when configuring a container for Active Directory authentication.
For more information, see Using gMSAs for Windows Containers: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html in the *Amazon Elastic Container Service Developer Guide*.
This parameter maps to SecurityOpt in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --security-opt option to docker run: https://docs.docker.com/engine/reference/run/.
The Amazon ECS container agent running on a container instance must register with the ECS_SELINUX_CAPABLE=true or ECS_APPARMOR_CAPABLE=true environment variables before containers placed on that instance can use these security options.
For more information, see Amazon ECS Container Agent Configuration: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockersecurityoptions
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntryPoint
Early versions of the Amazon ECS container agent do not properly handle entryPoint parameters.
If you have problems using entryPoint, update your container agent or enter your commands and arguments as command array items instead.
The entry point that is passed to the container.
This parameter maps to Entrypoint in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --entrypoint option to docker run: https://docs.docker.com/engine/reference/run/.
For more information, see https://docs.docker.com/engine/reference/builder/#entrypoint: https://docs.docker.com/engine/reference/builder/#entrypoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-entrypoint
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Environment
The environment variables to pass to a container.
This parameter maps to Env in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --env option to docker run: https://docs.docker.com/engine/reference/run/.
We do not recommend using plaintext environment variables for sensitive information, such as credential data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-environment
DuplicatesAllowed: False
ItemType: KeyValuePair
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Essential
If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped.
If the essential parameter of a container is marked as false, then its failure does not affect the rest of the containers in a task.
If this parameter is omitted, a container is assumed to be essential.
All tasks must have at least one essential container.
If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions.
For more information, see Application Architecture: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-essential
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraHosts
A list of hostnames and IP address mappings to append to the /etc/hosts file on the container.
This parameter maps to ExtraHosts in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --add-host option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers or tasks that use the awsvpc network mode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-extrahosts
DuplicatesAllowed: False
ItemType: HostEntry
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FirelensConfiguration
The FireLens configuration for the container.
This is used to specify and configure a log router for container logs.
For more information, see Custom Log Routing: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-firelensconfiguration
Type: FirelensConfiguration
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HealthCheck
The container health check command and associated configuration parameters for the container.
This parameter maps to HealthCheck in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the HEALTHCHECK parameter of docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-healthcheck
Type: HealthCheck
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Hostname
The hostname to use for your container.
This parameter maps to Hostname in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --hostname option to docker run: https://docs.docker.com/engine/reference/run/.
The hostname parameter is not supported if you are using the awsvpc network mode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-hostname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
The image used to start a container.
This string is passed directly to the Docker daemon.
Images in the Docker Hub registry are available by default.
Other repositories are specified with either  repository-url/image:tag  or  repository-url/image@digest .
Up to 255 letters uppercase and lowercase, numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed.
This parameter maps to Image in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the IMAGE parameter of docker run: https://docs.docker.com/engine/reference/run/.
+ When a new task starts, the Amazon ECS container agent pulls the latest version of the specified image and tag for the container to use.
However, subsequent updates to a repository image are not propagated to already running tasks.
+ Images in Amazon ECR repositories can be specified by either using the full registry/repository:tag or registry/repository@digest.
For example, 012345678910.dkr.ecr.\<region-name\>.amazonaws.com/\<repository-name\>:latest or 012345678910.dkr.ecr.\<region-name\>.amazonaws.com/\<repository-name\>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE.
+ Images in official repositories on Docker Hub use a single name for example, ubuntu or mongo.
+ Images in other repositories on Docker Hub are qualified with an organization name for example, amazon/amazon-ecs-agent.
+ Images in other online repositories are qualified further by a domain name for example, quay.io/assemblyline/ubuntu.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-image
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interactive
When this parameter is true, this allows you to deploy containerized applications that require stdin or a tty to be allocated.
This parameter maps to OpenStdin in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --interactive option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-interactive
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Links
The links parameter allows containers to communicate with each other without the need for port mappings.
This parameter is only supported if the network mode of a task definition is bridge.
The name:internalName construct is analogous to name:alias in Docker links.
Up to 255 letters uppercase and lowercase, numbers, and hyphens are allowed.
For more information about linking Docker containers, go to Legacy container links: https://docs.docker.com/network/links/ in the Docker documentation.
This parameter maps to Links in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --link option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers.
Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings.
Network isolation is achieved on the container instance using security groups and VPC settings.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-links
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinuxParameters
Linux-specific modifications that are applied to the container, such as Linux kernel capabilities.
For more information see KernelCapabilities: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html.
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-linuxparameters
Type: LinuxParameters
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogConfiguration
The log configuration specification for the container.
If you are using the Fargate launch type, the only supported value is awslogs.
This parameter maps to LogConfig in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --log-driver option to docker run: https://docs.docker.com/engine/reference/run/.
By default, containers use the same logging driver that the Docker daemon uses.
However the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition.
To use a different logging driver for a container, the log system must be configured properly on the container instance or on a different log server for remote logging options.
For more information on the options for different supported log drivers, see Configure logging drivers: https://docs.docker.com/engine/admin/logging/overview/ in the Docker documentation.
Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon shown in the LogConfiguration: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html data type.
Additional log drivers may be available in future releases of the Amazon ECS container agent.
This parameter requires version 1.18 of the Docker Remote API or greater on your container instance.
To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'
The Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the ECS_AVAILABLE_LOGGING_DRIVERS environment variable before containers placed on that instance can use these log configuration options.
For more information, see Amazon ECS Container Agent Configuration: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration
Type: LogConfiguration
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Memory
The amount in MiB of memory to present to the container.
If your container attempts to exceed the memory specified here, the container is killed.
The total amount of memory reserved for all containers within a task must be lower than the task memory value, if one is specified.
This parameter maps to Memory in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --memory option to docker run: https://docs.docker.com/engine/reference/run/.
If using the Fargate launch type, this parameter is optional.
If using the EC2 launch type, you must specify either a task-level memory value or a container-level memory value.
If you specify both a container-level memory and memoryReservation value, memory must be greater than memoryReservation.
If you specify memoryReservation, then that value is subtracted from the available memory resources for the container instance on which the container is placed.
Otherwise, the value of memory is used.
The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memory
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemoryReservation
The soft limit in MiB of memory to reserve for the container.
When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit.
However, your container can consume more memory when it needs to, up to either the hard limit specified with the memory parameter if applicable, or all of the available memory on the container instance, whichever comes first.
This parameter maps to MemoryReservation in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --memory-reservation option to docker run: https://docs.docker.com/engine/reference/run/.
If a task-level memory value is not specified, you must specify a non-zero integer for one or both of memory or memoryReservation in a container definition.
If you specify both, memory must be greater than memoryReservation.
If you specify memoryReservation, then that value is subtracted from the available memory resources for the container instance on which the container is placed.
Otherwise, the value of memory is used.
For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a memoryReservation of 128 MiB, and a memory hard limit of 300 MiB.
This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed.
The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memoryreservation
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MountPoints
The mount points for data volumes in your container.
This parameter maps to Volumes in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --volume option to docker run: https://docs.docker.com/engine/reference/run/.
Windows containers can mount whole directories on the same drive as $env:ProgramData.
Windows containers cannot mount directories on a different drive, and mount point cannot be across drives.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints
DuplicatesAllowed: False
ItemType: MountPoint
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of a container.
If you are linking multiple containers together in a task definition, the name of one container can be entered in the links of another container to connect the containers.
Up to 255 letters uppercase and lowercase, numbers, and hyphens are allowed.
This parameter maps to name in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --name option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-name
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PortMappings
The list of port mappings for the container.
Port mappings allow containers to access ports on the host container instance to send or receive traffic.
For task definitions that use the awsvpc network mode, you should only specify the containerPort.
The hostPort can be left blank or it must be the same value as the containerPort.
Port mappings on Windows use the NetNAT gateway address rather than localhost.
There is no loopback for port mappings on Windows, so you cannot access a container's mapped port from the host itself.
This parameter maps to PortBindings in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --publish option to docker run: https://docs.docker.com/engine/reference/run/.
If the network mode of a task definition is set to none, then you can't specify port mappings.
If the network mode of a task definition is set to host, then host ports must either be undefined or they must match the container port in the port mapping.
After a task reaches the RUNNING status, manual and automatic host and container port assignments are visible in the **Network Bindings** section of a container description for a selected task in the Amazon ECS console.
The assignments are also visible in the networkBindings section DescribeTasks: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html responses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-portmappings
DuplicatesAllowed: False
ItemType: PortMapping
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Privileged
When this parameter is true, the container is given elevated privileges on the host container instance similar to the root user.
This parameter maps to Privileged in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --privileged option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers or tasks using the Fargate launch type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-privileged
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PseudoTerminal
When this parameter is true, a TTY is allocated.
This parameter maps to Tty in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --tty option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-pseudoterminal
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadonlyRootFilesystem
When this parameter is true, the container is given read-only access to its root file system.
This parameter maps to ReadonlyRootfs in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --read-only option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-readonlyrootfilesystem
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RepositoryCredentials
The private repository authentication credentials to use.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-repositorycredentials
Type: RepositoryCredentials
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 29
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceRequirements
The type and amount of a resource to assign to a container.
The only supported resource is a GPU.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-resourcerequirements
DuplicatesAllowed: False
ItemType: ResourceRequirement
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 30
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Secrets
The secrets to pass to the container.
For more information, see Specifying Sensitive Data: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-secrets
DuplicatesAllowed: False
ItemType: Secret
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 31
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTimeout
Time duration in seconds to wait before giving up on resolving dependencies for a container.
For example, you specify two containers in a task definition with containerA having a dependency on containerB reaching a COMPLETE, SUCCESS, or HEALTHY status.
If a startTimeout value is specified for containerB and it does not reach the desired status within that time then containerA will give up and not start.
This results in the task transitioning to a STOPPED state.
For tasks using the Fargate launch type, this parameter requires that the task or service uses platform version 1.3.0 or later.
If this parameter is not specified, the default value of 3 minutes is used.
For tasks using the EC2 launch type, if the startTimeout parameter is not specified, the value set for the Amazon ECS container agent configuration variable ECS_CONTAINER_START_TIMEOUT is used by default.
If neither the startTimeout parameter or the ECS_CONTAINER_START_TIMEOUT agent configuration variable are set, then the default values of 3 minutes for Linux containers and 8 minutes on Windows containers are used.
Your container instances require at least version 1.26.0 of the container agent to enable a container start timeout value.
However, we recommend using the latest container agent version.
For information about checking your agent version and updating to the latest version, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html in the *Amazon Elastic Container Service Developer Guide*.
If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the ecs-init package.
If your container instances are launched from version 20190301 or later, then they contain the required versions of the container agent and ecs-init.
For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-starttimeout
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 32
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StopTimeout
Time duration in seconds to wait before the container is forcefully killed if it doesn't exit normally on its own.
For tasks using the Fargate launch type, the task or service requires platform version 1.3.0 or later.
The max stop timeout value is 120 seconds and if the parameter is not specified, the default value of 30 seconds is used.
For tasks using the EC2 launch type, if the stopTimeout parameter is not specified, the value set for the Amazon ECS container agent configuration variable ECS_CONTAINER_STOP_TIMEOUT is used by default.
If neither the stopTimeout parameter or the ECS_CONTAINER_STOP_TIMEOUT agent configuration variable are set, then the default values of 30 seconds for Linux containers and 30 seconds on Windows containers are used.
Your container instances require at least version 1.26.0 of the container agent to enable a container stop timeout value.
However, we recommend using the latest container agent version.
For information about checking your agent version and updating to the latest version, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html in the *Amazon Elastic Container Service Developer Guide*.
If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the ecs-init package.
If your container instances are launched from version 20190301 or later, then they contain the required versions of the container agent and ecs-init.
For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-stoptimeout
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 33
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SystemControls
A list of namespaced kernel parameters to set in the container.
This parameter maps to Sysctls in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --sysctl option to docker run: https://docs.docker.com/engine/reference/run/.
It is not recommended that you specify network-related systemControls parameters for multiple containers in a single task that also uses either the awsvpc or host network modes.
For tasks that use the awsvpc network mode, the container that is started last determines which systemControls parameters take effect.
For tasks that use the host network mode, it changes the container instance's namespaced kernel parameters as well as the containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-systemcontrols
DuplicatesAllowed: False
ItemType: SystemControl
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 34
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ulimits
A list of ulimits to set in the container.
This parameter maps to Ulimits in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --ulimit option to docker run: https://docs.docker.com/engine/reference/run/.
Valid naming values are displayed in the Ulimit: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_Ulimit.html data type.
This parameter requires version 1.18 of the Docker Remote API or greater on your container instance.
To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-ulimits
DuplicatesAllowed: False
ItemType: Ulimit
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 35
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -User
The user name to use inside the container.
This parameter maps to User in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --user option to docker run: https://docs.docker.com/engine/reference/run/.
You can use the following formats.
If specifying a UID or GID, you must specify it as a positive integer.
+  user
+  user:group
+  uid
+  uid:gid
+  user:gid
+  uid:group
This parameter is not supported for Windows containers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-user
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 36
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumesFrom
Data volumes to mount from another container.
This parameter maps to VolumesFrom in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --volumes-from option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom
DuplicatesAllowed: False
ItemType: VolumeFrom
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 37
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkingDirectory
The working directory in which to run commands inside the container.
This parameter maps to WorkingDir in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --workdir option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-workingdirectory
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 38
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.ContainerDefinition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html)

