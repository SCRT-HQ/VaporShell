function Add-VSSSMMaintenanceWindowTargetTargets {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTarget.Targets resource property to the template. The Targets property type specifies adding a target to a maintenance window target in AWS Systems Manager.

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTarget.Targets resource property to the template.
The Targets property type specifies adding a target to a maintenance window target in AWS Systems Manager.

Targets is a property of the AWS::SSM::MaintenanceWindowTarget: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html

    .PARAMETER Values
        User-defined criteria that maps to Key. For example, if you specified tag:ServerRole, you could specify value:WebServer to run a command on instances that include Amazon EC2 tags of ServerRole,WebServer. For more information about how to send commands that target instances using Key,Value parameters, see Using Targets and Rate Controls to Send Commands to a Fleet: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html in the *AWS Systems Manager User Guide*.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values
        UpdateType: Mutable

    .PARAMETER Key
        User-defined criteria for sending commands that target instances that meet the criteria. Key can be tag:<Amazon EC2 tag> or InstanceIds. For more information about how to send commands that target instances using Key,Value parameters, see Using Targets and Rate Controls to Send Commands to a Fleet: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting in the *AWS Systems Manager User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.MaintenanceWindowTarget.Targets')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.MaintenanceWindowTarget.Targets'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
