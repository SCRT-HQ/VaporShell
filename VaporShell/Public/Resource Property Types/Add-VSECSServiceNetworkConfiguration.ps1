function Add-VSECSServiceNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service.NetworkConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::ECS::Service.NetworkConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html

    .PARAMETER AwsvpcConfiguration
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration    
		Required: False    
		Type: AwsVpcConfiguration    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.Service.NetworkConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AwsvpcConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service.NetworkConfiguration'
    }
}
