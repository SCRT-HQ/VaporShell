function Add-VSECSServiceDeploymentController {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service.DeploymentController resource property to the template. The deployment controller to use for the service. For more information, see Amazon ECS Deployment Types: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html in the *Amazon Elastic Container Service Developer Guide*.

    .DESCRIPTION
        Adds an AWS::ECS::Service.DeploymentController resource property to the template.
The deployment controller to use for the service. For more information, see Amazon ECS Deployment Types: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html in the *Amazon Elastic Container Service Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html

    .PARAMETER Type
        The deployment controller type to use.
There are three deployment controller types available:
ECS
The rolling update ECS deployment type involves replacing the current running version of the container with the latest version. The number of containers Amazon ECS adds or removes from the service during a rolling update is controlled by adjusting the minimum and maximum number of healthy tasks allowed during a service deployment, as specified in the DeploymentConfiguration: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeploymentConfiguration.html.
CODE_DEPLOY
The blue/green CODE_DEPLOY deployment type uses the blue/green deployment model powered by AWS CodeDeploy, which allows you to verify a new deployment of a service before sending production traffic to it.
EXTERNAL
The external EXTERNAL deployment type enables you to use any third-party deployment controller for full control over the deployment process for an Amazon ECS service.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html#cfn-ecs-service-deploymentcontroller-type
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.Service.DeploymentController')]
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
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service.DeploymentController'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
