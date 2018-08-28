function Add-VSECSTaskDefinitionLinuxParameters {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html

    .PARAMETER Capabilities
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities    
		Required: False    
		Type: KernelCapabilities    
		UpdateType: Immutable    

    .PARAMETER Devices
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices    
		DuplicatesAllowed: False    
		ItemType: Device    
		Required: False    
		Type: List    
		UpdateType: Immutable    

    .PARAMETER InitProcessEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled    
		PrimitiveType: Boolean    
		Required: False    
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
        $InitProcessEnabled
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
    }
}
