function Add-VSECSTaskDefinitionSystemControl {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.SystemControl resource property to the template. A list of namespaced kernel parameters to set in the container. This parameter maps to Sysctls in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --sysctl option to docker run: https://docs.docker.com/engine/reference/run/.

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.SystemControl resource property to the template.
A list of namespaced kernel parameters to set in the container. This parameter maps to Sysctls in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --sysctl option to docker run: https://docs.docker.com/engine/reference/run/.

It is not recommended that you specify network-related systemControls parameters for multiple containers in a single task that also uses either the awsvpc or host network mode for the following reasons:

+ For tasks that use the awsvpc network mode, if you set systemControls for any container, it applies to all containers in the task. If you set different systemControls for multiple containers in a single task, the container that is started last determines which systemControls take effect.

+ For tasks that use the host network mode, the systemControls parameter applies to the container instance's kernel parameter as well as that of all containers of any tasks running on that container instance.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html

    .PARAMETER Namespace
        The namespaced kernel parameter for which to set a value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Value
        The value for the namespaced kernel parameter specified in namespace.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.SystemControl')]
    [cmdletbinding()]
    Param
    (
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
        $Namespace,
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
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.SystemControl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
