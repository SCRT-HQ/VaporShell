function Add-VSAutoScalingScalingPolicyTargetTrackingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html

    .PARAMETER CustomizedMetricSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-customizedmetricspecification    
		Required: False    
		Type: CustomizedMetricSpecification    
		UpdateType: Mutable    

    .PARAMETER DisableScaleIn
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-disablescalein    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER PredefinedMetricSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-predefinedmetricspecification    
		Required: False    
		Type: PredefinedMetricSpecification    
		UpdateType: Mutable    

    .PARAMETER TargetValue
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-targetvalue    
		PrimitiveType: Double    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.ScalingPolicy.TargetTrackingConfiguration')]
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
        [parameter(Mandatory = $true)]
        [System.Double]
        $TargetValue
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScalingPolicy.TargetTrackingConfiguration'
    }
}
