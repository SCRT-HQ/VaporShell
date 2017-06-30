function Add-VSEMRClusterScalingTrigger {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html

    .PARAMETER CloudWatchAlarmDefinition
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html#cfn-elasticmapreduce-cluster-scalingtrigger-cloudwatchalarmdefinition    
		Required: True    
		Type: CloudWatchAlarmDefinition    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.ScalingTrigger')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CloudWatchAlarmDefinition
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($psParamKey in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $psParamKey).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $psParamKey -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.ScalingTrigger'
    }
}
