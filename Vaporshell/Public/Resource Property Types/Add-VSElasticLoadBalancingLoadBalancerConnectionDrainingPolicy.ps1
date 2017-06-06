function Add-VSElasticLoadBalancingLoadBalancerConnectionDrainingPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy resource property to the template

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html

    .PARAMETER Enabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled
		PrimitiveType: Boolean
		Required: True
		UpdateType: Mutable

    .PARAMETER Timeout
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionDrainingPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $Enabled,
        [parameter(Mandatory = $false)]
        [Int]
        $Timeout
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionDrainingPolicy'
    }
}
