function Add-VSAutoScalingScalingPolicyStepAdjustment {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template. StepAdjustments is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that represents a step adjustment for a step scaling policy.

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template.
StepAdjustments is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that represents a step adjustment for a step scaling policy.

For the following examples, suppose that you have an alarm with a breach threshold of 50:

+ To trigger a step adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.

+ To trigger a step adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.

For more information, see Step Adjustments: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps in the *Amazon EC2 Auto Scaling User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html

    .PARAMETER MetricIntervalLowerBound
        The lower bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the lower bound is inclusive the metric must be greater than or equal to the threshold plus the lower bound. Otherwise, it is exclusive the metric must be greater than the threshold plus the lower bound. A null value indicates negative infinity.
You must specify at least one upper or lower bound.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER MetricIntervalUpperBound
        The upper bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the upper bound is exclusive the metric must be less than the threshold plus the upper bound. Otherwise, it is inclusive the metric must be less than or equal to the threshold plus the upper bound. A null value indicates positive infinity.
You must specify at least one upper or lower bound.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER ScalingAdjustment
        The amount by which to scale. The adjustment is based on the value that you specified in the AdjustmentType property either an absolute number or a percentage. A positive value adds to the current capacity and a negative number subtracts from the current capacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.ScalingPolicy.StepAdjustment')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Double]
        $MetricIntervalLowerBound,
        [parameter(Mandatory = $false)]
        [System.Double]
        $MetricIntervalUpperBound,
        [parameter(Mandatory = $true)]
        [Int]
        $ScalingAdjustment
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScalingPolicy.StepAdjustment'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
