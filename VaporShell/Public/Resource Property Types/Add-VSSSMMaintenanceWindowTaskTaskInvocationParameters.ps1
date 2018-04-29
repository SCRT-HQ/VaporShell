function Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html

    .PARAMETER MaintenanceWindowRunCommandParameters
		Type: MaintenanceWindowRunCommandParameters    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters    
		UpdateType: Mutable    

    .PARAMETER MaintenanceWindowAutomationParameters
		Type: MaintenanceWindowAutomationParameters    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters    
		UpdateType: Mutable    

    .PARAMETER MaintenanceWindowStepFunctionsParameters
		Type: MaintenanceWindowStepFunctionsParameters    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters    
		UpdateType: Mutable    

    .PARAMETER MaintenanceWindowLambdaParameters
		Type: MaintenanceWindowLambdaParameters    
		Required: False    
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
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters'
    }
}
