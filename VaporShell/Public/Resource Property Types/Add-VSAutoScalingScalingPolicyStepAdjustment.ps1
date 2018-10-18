function Add-VSAutoScalingScalingPolicyStepAdjustment {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html

    .PARAMETER MetricIntervalLowerBound
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound    
		PrimitiveType: Double    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER MetricIntervalUpperBound
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound    
		PrimitiveType: Double    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ScalingAdjustment
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment    
		PrimitiveType: Integer    
		Required: True    
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
