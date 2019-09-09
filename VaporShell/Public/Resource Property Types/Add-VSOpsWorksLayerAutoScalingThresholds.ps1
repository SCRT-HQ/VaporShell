function Add-VSOpsWorksLayerAutoScalingThresholds {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::Layer.AutoScalingThresholds resource property to the template. Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.

    .DESCRIPTION
        Adds an AWS::OpsWorks::Layer.AutoScalingThresholds resource property to the template.
Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html

    .PARAMETER CpuThreshold
        The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-cputhreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER IgnoreMetricsTime
        The amount of time in minutes after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. IgnoreMetricsTime allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-ignoremetricstime
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER InstanceCount
        The number of instances to add or remove when the load exceeds a threshold.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-instancecount
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER LoadThreshold
        The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see Load computing: http://en.wikipedia.org/wiki/Load_%28computing%29.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-loadthreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER MemoryThreshold
        The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-memorythreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER ThresholdsWaitTime
        The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-thresholdwaittime
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.Layer.AutoScalingThresholds')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Double]
        $CpuThreshold,
        [parameter(Mandatory = $false)]
        [Int]
        $IgnoreMetricsTime,
        [parameter(Mandatory = $false)]
        [Int]
        $InstanceCount,
        [parameter(Mandatory = $false)]
        [System.Double]
        $LoadThreshold,
        [parameter(Mandatory = $false)]
        [System.Double]
        $MemoryThreshold,
        [parameter(Mandatory = $false)]
        [Int]
        $ThresholdsWaitTime
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Layer.AutoScalingThresholds'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
