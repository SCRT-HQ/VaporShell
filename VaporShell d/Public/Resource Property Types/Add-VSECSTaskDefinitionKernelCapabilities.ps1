function Add-VSECSTaskDefinitionKernelCapabilities {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.KernelCapabilities resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.KernelCapabilities resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html

    .PARAMETER Add
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-add    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Immutable    

    .PARAMETER Drop
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-drop    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: List    
		UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.KernelCapabilities')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Add,
        [parameter(Mandatory = $false)]
        $Drop
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.KernelCapabilities'
    }
}
