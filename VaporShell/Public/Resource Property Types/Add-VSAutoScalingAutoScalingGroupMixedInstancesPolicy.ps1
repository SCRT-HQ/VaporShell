function Add-VSAutoScalingAutoScalingGroupMixedInstancesPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.MixedInstancesPolicy resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.MixedInstancesPolicy resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html

    .PARAMETER InstancesDistribution
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-instancesdistribution    
		Required: False    
		Type: InstancesDistribution    
		UpdateType: Mutable    

    .PARAMETER LaunchTemplate
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-launchtemplate    
		Required: True    
		Type: LaunchTemplate    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.MixedInstancesPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $InstancesDistribution,
        [parameter(Mandatory = $true)]
        $LaunchTemplate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.MixedInstancesPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
