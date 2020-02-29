function Add-VSECSTaskDefinitionLogConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.LogConfiguration resource property to the template. The LogConfiguration property specifies log configuration options to send to a custom log driver for the container.

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.LogConfiguration resource property to the template.
The LogConfiguration property specifies log configuration options to send to a custom log driver for the container.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html

    .PARAMETER LogDriver
        The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default.
For tasks using the Fargate launch type, the supported log drivers are awslogs and splunk.
For tasks using the EC2 launch type, the supported log drivers are awslogs, fluentd, gelf, json-file, journald, logentries, syslog, and splunk.
For more information about using the awslogs log driver, see Using the awslogs Log Driver: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html in the *Amazon Elastic Container Service Developer Guide*.
If you have a custom driver that is not listed above that you would like to work with the Amazon ECS container agent, you can fork the Amazon ECS container agent project that is available on GitHub: https://github.com/aws/amazon-ecs-agent and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, Amazon Web Services does not currently support running modified copies of this software.
This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-logdriver
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER Options
        The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-options
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Immutable

    .PARAMETER SecretOptions
        The secrets to pass to the log configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-logconfiguration-secretoptions
        DuplicatesAllowed: False
        ItemType: Secret
        Type: List
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.LogConfiguration')]
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
        $LogDriver,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Options,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.TaskDefinition.Secret"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecretOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.LogConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
