function Add-VSElasticLoadBalancingLoadBalancerConnectionSettings {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings resource property to the template

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html

    .PARAMETER IdleTimeout
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout
		PrimitiveType: Integer
		Required: True
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $IdleTimeout
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionSettings'
    }
}
