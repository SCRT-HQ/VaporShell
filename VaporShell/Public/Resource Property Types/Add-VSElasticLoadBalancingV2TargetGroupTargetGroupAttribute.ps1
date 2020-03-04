function Add-VSElasticLoadBalancingV2TargetGroupTargetGroupAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute resource property to the template. Specifies a target group attribute.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute resource property to the template.
Specifies a target group attribute.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html

    .PARAMETER Key
        The name of the attribute.
The following attribute is supported by both Application Load Balancers and Network Load Balancers:
+  deregistration_delay.timeout_seconds - The amount of time, in seconds, for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds. If the target is a Lambda function, this attribute is not supported.
The following attributes are supported by Application Load Balancers if the target is not a Lambda function:
+  load_balancing.algorithm.type - The load balancing algorithm determines how the load balancer selects targets when routing requests. The value is round_robin or least_outstanding_requests. The default is round_robin.
+  slow_start.duration_seconds - The time period, in seconds, during which a newly registered target receives a linearly increasing share of the traffic to the target group. After this time period ends, the target receives its full share of traffic. The range is 30-900 seconds 15 minutes. Slow start mode is disabled by default.
+  stickiness.enabled - Indicates whether sticky sessions are enabled. The value is true or false. The default is false.
+  stickiness.type - The type of sticky sessions. The possible value is lb_cookie.
+  stickiness.lb_cookie.duration_seconds - The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week 604800 seconds. The default value is 1 day 86400 seconds.
The following attribute is supported only if the target is a Lambda function.
+  lambda.multi_value_headers.enabled - Indicates whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. The value is true or false. The default is false. If the value is false and the request contains a duplicate header field name or query parameter key, the load balancer uses the last value sent by the client.
The following attribute is supported only by Network Load Balancers:
+  proxy_protocol_v2.enabled - Indicates whether Proxy Protocol version 2 is enabled. The value is true or false. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The value of the attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-value
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttribute')]
    [cmdletbinding()]
    Param
    (
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
        $Key,
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
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
