# Add-VSBatchJobDefinitionContainerProperties

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.ContainerProperties resource property to the template.
Container properties are used in job definitions to describe the container that is launched as part of a job.

## SYNTAX

```
Add-VSBatchJobDefinitionContainerProperties [[-User] <Object>] [[-Memory] <Object>] [[-Privileged] <Object>]
 [[-LinuxParameters] <Object>] [[-JobRoleArn] <Object>] [[-ReadonlyRootFilesystem] <Object>]
 [[-Vcpus] <Object>] [-Image] <Object> [[-ResourceRequirements] <Object>] [[-MountPoints] <Object>]
 [[-Volumes] <Object>] [[-Command] <Object>] [[-Environment] <Object>] [[-Ulimits] <Object>]
 [[-InstanceType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.ContainerProperties resource property to the template.
Container properties are used in job definitions to describe the container that is launched as part of a job.

## PARAMETERS

### -User
The user name to use inside the container.
This parameter maps to User in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --user option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user
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

### -Memory
The hard limit in MiB of memory to present to the container.
If your container attempts to exceed the memory specified here, the container is killed.
This parameter maps to Memory in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --memory option to docker run: https://docs.docker.com/engine/reference/run/.
You must specify at least 4 MiB of memory for a job.
If you are trying to maximize your resource utilization by providing your jobs as much memory as possible for a particular instance type, see Memory Management: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html in the *AWS Batch User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory
PrimitiveType: Integer
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

### -Privileged
When this parameter is true, the container is given elevated privileges on the host container instance similar to the root user.
This parameter maps to Privileged in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --privileged option to docker run: https://docs.docker.com/engine/reference/run/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-privileged
PrimitiveType: Boolean
UpdateType: Mutable

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

### -LinuxParameters
Linux-specific modifications that are applied to the container, such as details for device mappings.

Type: LinuxParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-linuxparameters
UpdateType: Mutable

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

### -JobRoleArn
The Amazon Resource Name ARN of the IAM role that the container can assume for AWS permissions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn
PrimitiveType: String
UpdateType: Mutable

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

### -ReadonlyRootFilesystem
When this parameter is true, the container is given read-only access to its root file system.
This parameter maps to ReadonlyRootfs in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --read-only option to docker run.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-readonlyrootfilesystem
PrimitiveType: Boolean
UpdateType: Mutable

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

### -Vcpus
The number of vCPUs reserved for the container.
This parameter maps to CpuShares in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --cpu-shares option to docker run: https://docs.docker.com/engine/reference/run/.
Each vCPU is equivalent to 1,024 CPU shares.
You must specify at least one vCPU.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
The image used to start a container.
This string is passed directly to the Docker daemon.
Images in the Docker Hub registry are available by default.
Other repositories are specified with  repository-url/image:tag .
Up to 255 letters uppercase and lowercase, numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed.
This parameter maps to Image in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the IMAGE parameter of docker run: https://docs.docker.com/engine/reference/run/.
+ Images in Amazon ECR repositories use the full registry and repository URI for example, 012345678910.dkr.ecr.\<region-name\>.amazonaws.com/\<repository-name\>.
+ Images in official repositories on Docker Hub use a single name for example, ubuntu or mongo.
+ Images in other repositories on Docker Hub are qualified with an organization name for example, amazon/amazon-ecs-agent.
+ Images in other online repositories are qualified further by a domain name for example, quay.io/assemblyline/ubuntu.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-image
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceRequirements
The type and amount of a resource to assign to a container.
Currently, the only supported resource is GPU.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-resourcerequirements
ItemType: ResourceRequirement
UpdateType: Mutable

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

### -MountPoints
The mount points for data volumes in your container.
This parameter maps to Volumes in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --volume option to docker run: https://docs.docker.com/engine/reference/run/.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-mountpoints
ItemType: MountPoints
UpdateType: Mutable

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

### -Volumes
A list of data volumes used in a job.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes
ItemType: Volumes
UpdateType: Mutable

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

### -Command
The command that is passed to the container.
This parameter maps to Cmd in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the COMMAND parameter to docker run: https://docs.docker.com/engine/reference/run/.
For more information, see https://docs.docker.com/engine/reference/builder/#cmd: https://docs.docker.com/engine/reference/builder/#cmd.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-command
UpdateType: Mutable

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

### -Environment
The environment variables to pass to a container.
This parameter maps to Env in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --env option to docker run: https://docs.docker.com/engine/reference/run/.
We do not recommend using plaintext environment variables for sensitive information, such as credential data.
Environment variables must not start with AWS_BATCH; this naming convention is reserved for variables that are set by the AWS Batch service.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-environment
ItemType: Environment
UpdateType: Mutable

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

### -Ulimits
A list of ulimits to set in the container.
This parameter maps to Ulimits in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --ulimit option to docker run: https://docs.docker.com/engine/reference/run/.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits
ItemType: Ulimit
UpdateType: Mutable

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

### -InstanceType
The instance type to use for a multi-node parallel job.
Currently all node groups in a multi-node parallel job must use the same instance type.
This parameter is not valid for single-node container jobs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-instancetype
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.ContainerProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html)

