function Add-VSServiceDiscoveryServiceHealthCheckConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceDiscovery::Service.HealthCheckConfig resource property to the template. *Public DNS namespaces only.* A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in DnsConfig.

    .DESCRIPTION
        Adds an AWS::ServiceDiscovery::Service.HealthCheckConfig resource property to the template.
*Public DNS namespaces only.* A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in DnsConfig.

**Important**

If you specify a health check configuration, you can specify either HealthCheckCustomConfig or HealthCheckConfig but not both.

Health checks are basic Route 53 health checks that monitor an AWS endpoint. For information about pricing for health checks, see Amazon Route 53 Pricing: http://aws.amazon.com/route53/pricing/.

Note the following about configuring health checks.

**A and AAAA records**

If DnsConfig includes configurations for both A and AAAA records, AWS Cloud Map creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the A and AAAA records to be unhealthy.

**CNAME records**

You can't specify settings for HealthCheckConfig when the DNSConfig includes CNAME for the value of Type. If you do, the CreateService request will fail with an InvalidInput error.

**Request interval**

A Route 53 health checker in each health-checking region sends a health check request to an endpoint every 30 seconds. On average, your endpoint receives a health check request about every two seconds. However, health checkers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.

**Health checking regions**

Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see Regions: https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions.

**Alias records**

When you register an instance, if you include the AWS_ALIAS_DNS_NAME attribute, AWS Cloud Map creates a Route 53 alias record. Note the following:

+ Route 53 automatically sets EvaluateTargetHealth to true for alias records. When EvaluateTargetHealth is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see EvaluateTargetHealth: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth.

+ If you include HealthCheckConfig and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.

**Charges for health checks**

Health checks are basic Route 53 health checks that monitor an AWS endpoint. For information about pricing for health checks, see Amazon Route 53 Pricing: http://aws.amazon.com/route53/pricing/.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html

    .PARAMETER Type
        The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy.
You can't change the value of Type after you create a health check.
You can create the following types of health checks:
+  **HTTP**: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.
+  **HTTPS**: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.
**Important**
If you specify HTTPS for the value of Type, the endpoint must support TLS v1.0 or later.
+  **TCP**: Route 53 tries to establish a TCP connection.
If you specify TCP for Type, don't specify a value for ResourcePath.
For more information, see How Route 53 Determines Whether an Endpoint Is Healthy: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html in the *Route 53 Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ResourcePath
        The path that you want Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, such as the file /docs/route53-health-check.html. Route 53 automatically adds the DNS name for the service. If you don't specify a value for ResourcePath, the default value is /.
If you specify TCP for Type, you must *not* specify a value for ResourcePath.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-resourcepath
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER FailureThreshold
        The number of consecutive health checks that an endpoint must pass or fail for Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see How Route 53 Determines Whether an Endpoint Is Healthy: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html in the *Route 53 Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-failurethreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ServiceDiscovery.Service.HealthCheckConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResourcePath,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ServiceDiscovery.Service.HealthCheckConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
