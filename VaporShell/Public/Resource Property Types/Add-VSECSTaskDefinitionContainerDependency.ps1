function Add-VSECSTaskDefinitionContainerDependency {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.ContainerDependency resource property to the template. The ContainerDependency property specifies the dependencies defined for container startup and shutdown. A container can contain multiple dependencies. When a dependency is defined for container startup, for container shutdown it is reversed.

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.ContainerDependency resource property to the template.
The ContainerDependency property specifies the dependencies defined for container startup and shutdown. A container can contain multiple dependencies. When a dependency is defined for container startup, for container shutdown it is reversed.

Your Amazon ECS container instances require at least version 1.26.0 of the container agent to enable container dependencies. However, we recommend using the latest container agent version. For information about checking your agent version and updating to the latest version, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html in the *Amazon Elastic Container Service Developer Guide*. If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the ecs-init package. If your container instances are launched from version 20190301 or later, then they contain the required versions of the container agent and ecs-init. For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.

**Note**

If you are using tasks that use the Fargate launch type, container dependency parameters are not supported.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html

    .PARAMETER Condition
        The dependency condition of the container. The following are the available conditions and their behavior:
+  START - This condition emulates the behavior of links and volumes today. It validates that a dependent container is started before permitting other containers to start.
+  COMPLETE - This condition validates that a dependent container runs to completion exits before permitting other containers to start. This can be useful for nonessential containers that run a script and then exit.
+  SUCCESS - This condition is the same as COMPLETE, but it also requires that the container exits with a zero status.
+  HEALTHY - This condition validates that the dependent container passes its Docker health check before permitting other containers to start. This requires that the dependent container has health checks configured. This condition is confirmed only at task startup.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER ContainerName
        The name of a container.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.ContainerDependency')]
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
        $Condition,
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
        $ContainerName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.ContainerDependency'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
