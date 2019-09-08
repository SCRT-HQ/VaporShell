function Add-VSAutoScalingScalingPolicyPredefinedMetricSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html

    .PARAMETER PredefinedMetricType
        The metric type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ResourceLabel
        Identifies the resource associated with the metric type. The following predefined metrics are available:
+  ASGAverageCPUUtilization - Average CPU utilization of the Auto Scaling group.
+  ASGAverageNetworkIn - Average number of bytes received on all network interfaces by the Auto Scaling group.
+  ASGAverageNetworkOut - Average number of bytes sent out on all network interfaces by the Auto Scaling group.
+  ALBRequestCountPerTarget - Number of requests completed per target in an Application Load Balancer target group.
For predefined metric types ASGAverageCPUUtilization, ASGAverageNetworkIn, and ASGAverageNetworkOut, the property must not be specified as the resource associated with the metric type is the Auto Scaling group. For predefined metric type ALBRequestCountPerTarget, the property must be specified in the format: app/load-balancer-name/load-balancer-id/targetgroup/target-group-name/target-group-id , where app/load-balancer-name/load-balancer-id  is the final portion of the load balancer ARN, and targetgroup/target-group-name/target-group-id  is the final portion of the target group ARN. The target group must be attached to the Auto Scaling group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.ScalingPolicy.PredefinedMetricSpecification')]
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
        $PredefinedMetricType,
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
        $ResourceLabel
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScalingPolicy.PredefinedMetricSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
