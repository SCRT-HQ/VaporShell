function Add-VSECSTaskDefinitionVolumeFrom {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.VolumeFrom resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.VolumeFrom resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html

    .PARAMETER ReadOnly
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-readonly    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Immutable    

    .PARAMETER SourceContainer
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-sourcecontainer    
		PrimitiveType: String    
		Required: False    
		UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.VolumeFrom')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ReadOnly,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $SourceContainer
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.VolumeFrom'
    }
}
