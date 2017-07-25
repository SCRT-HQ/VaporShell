function Add-VSEMRInstanceGroupConfigAutoScalingPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html

    .PARAMETER Constraints
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints    
		Required: True    
		Type: ScalingConstraints    
		UpdateType: Mutable    

    .PARAMETER Rules
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules    
		DuplicatesAllowed: False    
		ItemType: ScalingRule    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Constraints,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EMR.InstanceGroupConfig.ScalingRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Rules
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy'
    }
}
