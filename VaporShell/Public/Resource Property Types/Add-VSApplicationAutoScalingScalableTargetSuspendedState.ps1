function Add-VSApplicationAutoScalingScalableTargetSuspendedState {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState resource property to the template. Specifies whether the scaling activities for a scalable target are in a suspended state.

    .DESCRIPTION
        Adds an AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState resource property to the template.
Specifies whether the scaling activities for a scalable target are in a suspended state.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html

    .PARAMETER DynamicScalingInSuspended
        Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Set the value to true if you don't want Application Auto Scaling to remove capacity when a scaling policy is triggered. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalinginsuspended
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER DynamicScalingOutSuspended
        Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Set the value to true if you don't want Application Auto Scaling to add capacity when a scaling policy is triggered. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalingoutsuspended
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ScheduledScalingSuspended
        Whether scheduled scaling is suspended. Set the value to true if you don't want Application Auto Scaling to add or remove capacity by initiating scheduled actions. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-scheduledscalingsuspended
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApplicationAutoScaling.ScalableTarget.SuspendedState')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DynamicScalingInSuspended,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DynamicScalingOutSuspended,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ScheduledScalingSuspended
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationAutoScaling.ScalableTarget.SuspendedState'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
