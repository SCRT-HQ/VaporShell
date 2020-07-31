function Add-VSServiceDiscoveryServiceHealthCheckCustomConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template. A complex type that contains information about an optional custom health check. A custom health check, which requires that you use a third-party health checker to evaluate the health of your resources, is useful in the following circumstances:

    .DESCRIPTION
        Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template.
A complex type that contains information about an optional custom health check. A custom health check, which requires that you use a third-party health checker to evaluate the health of your resources, is useful in the following circumstances:

+ You can't use a health check that is defined by HealthCheckConfig because the resource isn't available over the internet. For example, you can use a custom health check when the instance is in an Amazon VPC. (To check the health of resources in a VPC, the health checker must also be in the VPC.

+ You want to use a third-party health checker regardless of where your resources are.

**Important**

If you specify a health check configuration, you can specify either HealthCheckCustomConfig or HealthCheckConfig but not both.

To change the status of a custom health check, submit an UpdateInstanceCustomHealthStatus request. AWS Cloud Map doesn't monitor the status of the resource, it just keeps a record of the status specified in the most recent UpdateInstanceCustomHealthStatus request.

Here's how custom health checks work:

1. You create a service and specify a value for FailureThreshold.

The failure threshold indicates the number of 30-second intervals you want AWS Cloud Map to wait between the time that your application sends an UpdateInstanceCustomHealthStatus: https://docs.aws.amazon.com/cloud-map/latest/api/API_UpdateInstanceCustomHealthStatus.html request and the time that AWS Cloud Map stops routing internet traffic to the corresponding resource.

1. You register an instance.

1. You configure a third-party health checker to monitor the resource that is associated with the new instance.

**Note**

AWS Cloud Map doesn't check the health of the resource directly.

1. The third-party health-checker determines that the resource is unhealthy and notifies your application.

1. Your application submits an UpdateInstanceCustomHealthStatus request.

1. AWS Cloud Map waits for (FailureThreshold x 30 seconds.

1. If another UpdateInstanceCustomHealthStatus request doesn't arrive during that time to change the status back to healthy, AWS Cloud Map stops routing traffic to the resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html

    .PARAMETER FailureThreshold
        The number of 30-second intervals that you want AWS Cloud Map to wait after receiving an UpdateInstanceCustomHealthStatus request before it changes the health status of a service instance. For example, suppose you specify a value of 2 for FailureTheshold, and then your application sends an UpdateInstanceCustomHealthStatus request. AWS Cloud Map waits for approximately 60 seconds 2 x 30 before changing the status of the service instance based on that request.
Sending a second or subsequent UpdateInstanceCustomHealthStatus request with the same value before FailureThreshold x 30 seconds has passed doesn't accelerate the change. AWS Cloud Map still waits FailureThreshold x 30 seconds after the first request to make the change.

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
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
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
