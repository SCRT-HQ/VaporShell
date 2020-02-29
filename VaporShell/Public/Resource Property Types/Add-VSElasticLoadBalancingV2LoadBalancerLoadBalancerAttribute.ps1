function Add-VSElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template. Specifies an attribute for an Application Load Balancer or a Network Load Balancer.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template.
Specifies an attribute for an Application Load Balancer or a Network Load Balancer.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html

    .PARAMETER Key
        The name of the attribute.
The following attributes are supported by both Application Load Balancers and Network Load Balancers:
+  access_logs.s3.enabled - Indicates whether access logs are enabled. The value is true or false. The default is false.
+  access_logs.s3.bucket - The name of the S3 bucket for the access logs. This attribute is required if access logs are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.
+  access_logs.s3.prefix - The prefix for the location in the S3 bucket for the access logs.
+  deletion_protection.enabled - Indicates whether deletion protection is enabled. The value is true or false. The default is false.
The following attributes are supported by only Application Load Balancers:
+  idle_timeout.timeout_seconds - The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds.
+  routing.http2.enabled - Indicates whether HTTP/2 is enabled. The value is true or false. The default is true.
The following attributes are supported by only Network Load Balancers:
+  load_balancing.cross_zone.enabled - Indicates whether cross-zone load balancing is enabled. The value is true or false. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The value of the attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttribute')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
