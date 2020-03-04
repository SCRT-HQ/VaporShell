function Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template. The TaskInvocationParameters property type specifies the task execution parameters for a maintenance window task in AWS Systems Manager.

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.
The TaskInvocationParameters property type specifies the task execution parameters for a maintenance window task in AWS Systems Manager.

TaskInvocationParameters is a property of the AWS::SSM::MaintenanceWindowTask: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html

    .PARAMETER MaintenanceWindowRunCommandParameters
        The parameters for a RUN_COMMAND task type.

        Type: MaintenanceWindowRunCommandParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowAutomationParameters
        The parameters for an AUTOMATION task type.

        Type: MaintenanceWindowAutomationParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowStepFunctionsParameters
        The parameters for a STEP_FUNCTIONS task type.

        Type: MaintenanceWindowStepFunctionsParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowLambdaParameters
        The parameters for a LAMBDA task type.

        Type: MaintenanceWindowLambdaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MaintenanceWindowRunCommandParameters,
        [parameter(Mandatory = $false)]
        $MaintenanceWindowAutomationParameters,
        [parameter(Mandatory = $false)]
        $MaintenanceWindowStepFunctionsParameters,
        [parameter(Mandatory = $false)]
        $MaintenanceWindowLambdaParameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
