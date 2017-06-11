function Add-VSECSTaskDefinitionUlimit {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.Ulimit resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.Ulimit resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html

    .PARAMETER HardLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-hardlimit
		PrimitiveType: Integer
		Required: True
		UpdateType: Immutable

    .PARAMETER Name
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-name
		PrimitiveType: String
		Required: True
		UpdateType: Immutable

    .PARAMETER SoftLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-softlimit
		PrimitiveType: Integer
		Required: True
		UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.Ulimit')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $HardLimit,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Name,
        [parameter(Mandatory = $true)]
        [Int]
        $SoftLimit
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.Ulimit'
    }
}
