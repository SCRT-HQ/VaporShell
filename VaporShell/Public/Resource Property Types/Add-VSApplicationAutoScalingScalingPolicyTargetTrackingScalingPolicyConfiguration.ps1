function Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html

    .PARAMETER CustomizedMetricSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-customizedmetricspecification    
		Required: False    
		Type: CustomizedMetricSpecification    
		UpdateType: Mutable    

    .PARAMETER DisableScaleIn
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER PredefinedMetricSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-predefinedmetricspecification    
		Required: False    
		Type: PredefinedMetricSpecification    
		UpdateType: Mutable    

    .PARAMETER ScaleInCooldown
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ScaleOutCooldown
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER TargetValue
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue    
		PrimitiveType: Double    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomizedMetricSpecification,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DisableScaleIn,
        [parameter(Mandatory = $false)]
        $PredefinedMetricSpecification,
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleInCooldown,
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleOutCooldown,
        [parameter(Mandatory = $true)]
        [System.Double]
        $TargetValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
