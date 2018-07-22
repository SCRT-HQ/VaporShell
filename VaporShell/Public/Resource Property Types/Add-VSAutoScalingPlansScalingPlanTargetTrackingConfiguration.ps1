function Add-VSAutoScalingPlansScalingPlanTargetTrackingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html

    .PARAMETER ScaleOutCooldown
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleoutcooldown    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER TargetValue
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-targetvalue    
		PrimitiveType: Double    
		UpdateType: Mutable    

    .PARAMETER PredefinedScalingMetricSpecification
		Type: PredefinedScalingMetricSpecification    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-predefinedscalingmetricspecification    
		UpdateType: Mutable    

    .PARAMETER DisableScaleIn
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-disablescalein    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER ScaleInCooldown
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleincooldown    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER EstimatedInstanceWarmup
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-estimatedinstancewarmup    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER CustomizedScalingMetricSpecification
		Type: CustomizedScalingMetricSpecification    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-customizedscalingmetricspecification    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScalingPlans.ScalingPlan.TargetTrackingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleOutCooldown,
        [parameter(Mandatory = $true)]
        [System.Double]
        $TargetValue,
        [parameter(Mandatory = $false)]
        $PredefinedScalingMetricSpecification,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DisableScaleIn,
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleInCooldown,
        [parameter(Mandatory = $false)]
        [Int]
        $EstimatedInstanceWarmup,
        [parameter(Mandatory = $false)]
        $CustomizedScalingMetricSpecification
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScalingPlans.ScalingPlan.TargetTrackingConfiguration'
    }
}
