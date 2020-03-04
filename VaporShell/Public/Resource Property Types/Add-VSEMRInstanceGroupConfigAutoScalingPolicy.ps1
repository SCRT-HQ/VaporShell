function Add-VSEMRInstanceGroupConfigAutoScalingPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template. AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

    .DESCRIPTION
        Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template.
AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html

    .PARAMETER Constraints
        The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activity will not cause an instance group to grow above or below these limits.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints
        Type: ScalingConstraints
        UpdateType: Mutable

    .PARAMETER Rules
        The scale-in and scale-out rules that comprise the automatic scaling policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules
        DuplicatesAllowed: False
        ItemType: ScalingRule
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Constraints,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EMR.InstanceGroupConfig.ScalingRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Rules
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
