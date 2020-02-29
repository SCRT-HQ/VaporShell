function Add-VSSSMMaintenanceWindowTaskTarget {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTask.Target resource property to the template. The Target property type specifies targets (either instances or window target IDs. You specify instances by using Key=InstanceIds,Values=<instanceid1>,<instanceid2>. You specify window target IDs using Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2> for a maintenance window task in AWS Systems Manager.

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTask.Target resource property to the template.
The Target property type specifies targets (either instances or window target IDs. You specify instances by using Key=InstanceIds,Values=<instanceid1>,<instanceid2>. You specify window target IDs using Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2> for a maintenance window task in AWS Systems Manager.

Target is a property of the AWS::SSM::MaintenanceWindowTask: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html

    .PARAMETER Values
        User-defined criteria that maps to Key. For example, if you specify InstanceIds, you can specify i-1234567890abcdef0,i-9876543210abcdef0 to run a command on two EC2 instances. For more information about how to target instances within a maintenance window task, see About 'register-task-with-maintenance-window' Options and Values: https://docs.aws.amazon.com/systems-manager/latest/userguide/register-tasks-options.html in the *AWS Systems Manager User Guide*.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-values
        UpdateType: Mutable

    .PARAMETER Key
        User-defined criteria for sending commands that target instances that meet the criteria. Key can be InstanceIds or WindowTargetIds. For more information about how to target instances within a maintenance window task, see About 'register-task-with-maintenance-window' Options and Values: https://docs.aws.amazon.com/systems-manager/latest/userguide/register-tasks-options.html in the *AWS Systems Manager User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-key
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.MaintenanceWindowTask.Target')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Values,
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
        $Key
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.MaintenanceWindowTask.Target'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
