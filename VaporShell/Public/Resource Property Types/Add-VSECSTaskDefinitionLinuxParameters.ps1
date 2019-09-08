function Add-VSECSTaskDefinitionLinuxParameters {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html

    .PARAMETER Capabilities
        The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
If you are using tasks that use the Fargate launch type, capabilities is supported but the add parameter is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities
        Type: KernelCapabilities
        UpdateType: Immutable

    .PARAMETER Devices
        Any host devices to expose to the container. This parameter maps to Devices in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --device option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the devices parameter is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices
        DuplicatesAllowed: False
        ItemType: Device
        Type: List
        UpdateType: Immutable

    .PARAMETER InitProcessEnabled
        Run an init process inside the container that forwards signals and reaps processes. This parameter maps to the --init option to docker run: https://docs.docker.com/engine/reference/run/. This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER SharedMemorySize
        The value for the size in MiB of the /dev/shm volume. This parameter maps to the --shm-size option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the sharedMemorySize parameter is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-sharedmemorysize
        PrimitiveType: Integer
        UpdateType: Immutable

    .PARAMETER Tmpfs
        The container path, mount options, and size in MiB of the tmpfs mount. This parameter maps to the --tmpfs option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the tmpfs parameter is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-tmpfs
        DuplicatesAllowed: False
        ItemType: Tmpfs
        Type: List
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.LinuxParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.TaskDefinition.Device"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Devices,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $InitProcessEnabled,
        [parameter(Mandatory = $false)]
        [Int]
        $SharedMemorySize,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.TaskDefinition.Tmpfs"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tmpfs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.LinuxParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
