# Add-VSServiceDiscoveryServiceHealthCheckCustomConfig

## SYNOPSIS
Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template.
A complex type that contains information about an optional custom health check.
A custom health check, which requires that you use a third-party health checker to evaluate the health of your resources, is useful in the following circumstances:

## SYNTAX

```
Add-VSServiceDiscoveryServiceHealthCheckCustomConfig [[-FailureThreshold] <Double>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ServiceDiscovery::Service.HealthCheckCustomConfig resource property to the template.
A complex type that contains information about an optional custom health check.
A custom health check, which requires that you use a third-party health checker to evaluate the health of your resources, is useful in the following circumstances:

+ You can't use a health check that is defined by HealthCheckConfig because the resource isn't available over the internet.
For example, you can use a custom health check when the instance is in an Amazon VPC.
(To check the health of resources in a VPC, the health checker must also be in the VPC.

+ You want to use a third-party health checker regardless of where your resources are.

**Important**

If you specify a health check configuration, you can specify either HealthCheckCustomConfig or HealthCheckConfig but not both.

To change the status of a custom health check, submit an UpdateInstanceCustomHealthStatus request.
Cloud Map doesn't monitor the status of the resource, it just keeps a record of the status specified in the most recent UpdateInstanceCustomHealthStatus request.

Here's how custom health checks work:

1.
You create a service and specify a value for FailureThreshold.

The failure threshold indicates the number of 30-second intervals you want AWS Cloud Map to wait between the time that your application sends an UpdateInstanceCustomHealthStatus: https://docs.aws.amazon.com/cloud-map/latest/api/API_UpdateInstanceCustomHealthStatus.html request and the time that AWS Cloud Map stops routing internet traffic to the corresponding resource.

1.
You register an instance.

1.
You configure a third-party health checker to monitor the resource that is associated with the new instance.

**Note**

AWS Cloud Map doesn't check the health of the resource directly.

1.
The third-party health-checker determines that the resource is unhealthy and notifies your application.

1.
Your application submits an UpdateInstanceCustomHealthStatus request.

1.
AWS Cloud Map waits for (FailureThreshold x 30 seconds.

1.
If another UpdateInstanceCustomHealthStatus request doesn't arrive during that time to change the status back to healthy, AWS Cloud Map stops routing traffic to the resource.

Note the following about configuring custom health checks.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -FailureThreshold
The number of 30-second intervals that you want Cloud Map to wait after receiving an UpdateInstanceCustomHealthStatus request before it changes the health status of a service instance.
For example, suppose you specify a value of 2 for FailureTheshold, and then your application sends an UpdateInstanceCustomHealthStatus request.
Cloud Map waits for approximately 60 seconds 2 x 30 before changing the status of the service instance based on that request.
Sending a second or subsequent UpdateInstanceCustomHealthStatus request with the same value before FailureThreshold x 30 seconds has passed doesn't accelerate the change.
Cloud Map still waits FailureThreshold x 30 seconds after the first request to make the change.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html#cfn-servicediscovery-service-healthcheckcustomconfig-failurethreshold
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ServiceDiscovery.Service.HealthCheckCustomConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html)

