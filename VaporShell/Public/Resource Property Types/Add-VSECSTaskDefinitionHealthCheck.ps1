function Add-VSECSTaskDefinitionHealthCheck {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.HealthCheck resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.HealthCheck resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html

    .PARAMETER Command
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-command    
        DuplicatesAllowed: False    
        PrimitiveItemType: String    
        Required: True    
        Type: List    
        UpdateType: Immutable    

    .PARAMETER Interval
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-interval    
        PrimitiveType: Integer    
        Required: False    
        UpdateType: Immutable    

    .PARAMETER Retries
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-retries    
        PrimitiveType: Integer    
        Required: False    
        UpdateType: Immutable    

    .PARAMETER StartPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-startperiod    
        PrimitiveType: Integer    
        Required: False    
        UpdateType: Immutable    

    .PARAMETER Timeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-timeout    
        PrimitiveType: Integer    
        Required: False    
        UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.HealthCheck')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Command,
        [parameter(Mandatory = $false)]
        [Int]
        $Interval,
        [parameter(Mandatory = $false)]
        [Int]
        $Retries,
        [parameter(Mandatory = $false)]
        [Int]
        $StartPeriod,
        [parameter(Mandatory = $false)]
        [Int]
        $Timeout
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.HealthCheck'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
