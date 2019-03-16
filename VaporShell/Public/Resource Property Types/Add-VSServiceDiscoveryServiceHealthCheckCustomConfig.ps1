function Add-VSServiceDiscoveryServiceHealthCheckCustomConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html

    .PARAMETER FailureThreshold
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html#cfn-servicediscovery-service-healthcheckcustomconfig-failurethreshold    
        PrimitiveType: Double    
        UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ServiceDiscovery.Service.HealthCheckCustomConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Double]
        $FailureThreshold
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ServiceDiscovery.Service.HealthCheckCustomConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
