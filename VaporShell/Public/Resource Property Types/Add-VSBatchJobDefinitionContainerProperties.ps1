function Add-VSBatchJobDefinitionContainerProperties {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.ContainerProperties resource property to the template

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.ContainerProperties resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html

    .PARAMETER User
        The user name to use inside the container. This parameter maps to User in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --user option to docker run: https://docs.docker.com/engine/reference/run/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Memory
        The hard limit in MiB of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to Memory in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --memory option to docker run: https://docs.docker.com/engine/reference/run/. You must specify at least 4 MiB of memory for a job.
If you are trying to maximize your resource utilization by providing your jobs as much memory as possible for a particular instance type, see Memory Management: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html in the *AWS Batch User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Privileged
        When this parameter is true, the container is given elevated privileges on the host container instance similar to the root user. This parameter maps to Privileged in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --privileged option to docker run: https://docs.docker.com/engine/reference/run/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-privileged
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER LinuxParameters
        Linux-specific modifications that are applied to the container, such as details for device mappings.

        Type: LinuxParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-linuxparameters
        UpdateType: Mutable

    .PARAMETER JobRoleArn
        The Amazon Resource Name ARN of the IAM role that the container can assume for AWS permissions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ReadonlyRootFilesystem
        When this parameter is true, the container is given read-only access to its root file system. This parameter maps to ReadonlyRootfs in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --read-only option to docker run.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-readonlyrootfilesystem
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Vcpus
        The number of vCPUs reserved for the container. This parameter maps to CpuShares in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --cpu-shares option to docker run: https://docs.docker.com/engine/reference/run/. Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Image
        The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with  repository-url/image:tag . Up to 255 letters uppercase and lowercase, numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to Image in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the IMAGE parameter of docker run: https://docs.docker.com/engine/reference/run/.
+ Images in Amazon ECR repositories use the full registry and repository URI for example, 012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>.
+ Images in official repositories on Docker Hub use a single name for example, ubuntu or mongo.
+ Images in other repositories on Docker Hub are qualified with an organization name for example, amazon/amazon-ecs-agent.
+ Images in other online repositories are qualified further by a domain name for example, quay.io/assemblyline/ubuntu.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-image
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ResourceRequirements
        The type and amount of a resource to assign to a container. Currently, the only supported resource is GPU.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-resourcerequirements
        ItemType: ResourceRequirement
        UpdateType: Mutable

    .PARAMETER MountPoints
        The mount points for data volumes in your container. This parameter maps to Volumes in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --volume option to docker run: https://docs.docker.com/engine/reference/run/.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-mountpoints
        ItemType: MountPoints
        UpdateType: Mutable

    .PARAMETER Volumes
        A list of data volumes used in a job.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes
        ItemType: Volumes
        UpdateType: Mutable

    .PARAMETER Command
        The command that is passed to the container. This parameter maps to Cmd in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the COMMAND parameter to docker run: https://docs.docker.com/engine/reference/run/. For more information, see https://docs.docker.com/engine/reference/builder/#cmd: https://docs.docker.com/engine/reference/builder/#cmd.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-command
        UpdateType: Mutable

    .PARAMETER Environment
        The environment variables to pass to a container. This parameter maps to Env in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --env option to docker run: https://docs.docker.com/engine/reference/run/.
We do not recommend using plaintext environment variables for sensitive information, such as credential data.
Environment variables must not start with AWS_BATCH; this naming convention is reserved for variables that are set by the AWS Batch service.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-environment
        ItemType: Environment
        UpdateType: Mutable

    .PARAMETER Ulimits
        A list of ulimits to set in the container. This parameter maps to Ulimits in the Create a container: https://docs.docker.com/engine/api/v1.23/#create-a-container section of the Docker Remote API: https://docs.docker.com/engine/api/v1.23/ and the --ulimit option to docker run: https://docs.docker.com/engine/reference/run/.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits
        ItemType: Ulimit
        UpdateType: Mutable

    .PARAMETER InstanceType
        The instance type to use for a multi-node parallel job. Currently all node groups in a multi-node parallel job must use the same instance type. This parameter is not valid for single-node container jobs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-instancetype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.JobDefinition.ContainerProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $User,
        [parameter(Mandatory = $true)]
        [Int]
        $Memory,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $Privileged,
        [parameter(Mandatory = $false)]
        $LinuxParameters,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $JobRoleArn,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ReadonlyRootFilesystem,
        [parameter(Mandatory = $true)]
        [Int]
        $Vcpus,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Image,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.ResourceRequirement"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResourceRequirements,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.MountPoints"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MountPoints,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.Volumes"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Volumes,
        [parameter(Mandatory = $false)]
        $Command,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.Environment"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Environment,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.Ulimit"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Ulimits,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InstanceType
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.ContainerProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
