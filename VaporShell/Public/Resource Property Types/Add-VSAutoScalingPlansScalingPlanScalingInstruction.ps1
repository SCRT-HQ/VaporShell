function Add-VSAutoScalingPlansScalingPlanScalingInstruction {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScalingPlans::ScalingPlan.ScalingInstruction resource property to the template

    .DESCRIPTION
        Adds an AWS::AutoScalingPlans::ScalingPlan.ScalingInstruction resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html

    .PARAMETER DisableDynamicScaling
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-disabledynamicscaling    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER ServiceNamespace
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-servicenamespace    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER PredictiveScalingMaxCapacityBehavior
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybehavior    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER ScalableDimension
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalabledimension    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER ScalingPolicyUpdateBehavior
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalingpolicyupdatebehavior    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER MinCapacity
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-mincapacity    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER TargetTrackingConfigurations
		Type: List    
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-targettrackingconfigurations    
		ItemType: TargetTrackingConfiguration    
		UpdateType: Mutable    

    .PARAMETER PredictiveScalingMaxCapacityBuffer
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybuffer    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER CustomizedLoadMetricSpecification
		Type: CustomizedLoadMetricSpecification    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-customizedloadmetricspecification    
		UpdateType: Mutable    

    .PARAMETER PredefinedLoadMetricSpecification
		Type: PredefinedLoadMetricSpecification    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predefinedloadmetricspecification    
		UpdateType: Mutable    

    .PARAMETER ResourceId
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-resourceid    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER ScheduledActionBufferTime
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scheduledactionbuffertime    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER MaxCapacity
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-maxcapacity    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER PredictiveScalingMode
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmode    
		PrimitiveType: String    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScalingPlans.ScalingPlan.ScalingInstruction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DisableDynamicScaling,
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
        $ServiceNamespace,
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
        $PredictiveScalingMaxCapacityBehavior,
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
        $ScalableDimension,
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
        $ScalingPolicyUpdateBehavior,
        [parameter(Mandatory = $true)]
        [Int]
        $MinCapacity,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AutoScalingPlans.ScalingPlan.TargetTrackingConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TargetTrackingConfigurations,
        [parameter(Mandatory = $false)]
        [Int]
        $PredictiveScalingMaxCapacityBuffer,
        [parameter(Mandatory = $false)]
        $CustomizedLoadMetricSpecification,
        [parameter(Mandatory = $false)]
        $PredefinedLoadMetricSpecification,
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
        $ResourceId,
        [parameter(Mandatory = $false)]
        [Int]
        $ScheduledActionBufferTime,
        [parameter(Mandatory = $true)]
        [Int]
        $MaxCapacity,
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
        $PredictiveScalingMode
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScalingPlans.ScalingPlan.ScalingInstruction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
