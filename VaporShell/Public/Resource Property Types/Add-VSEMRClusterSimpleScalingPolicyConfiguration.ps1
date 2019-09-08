function Add-VSEMRClusterSimpleScalingPolicyConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.SimpleScalingPolicyConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.SimpleScalingPolicyConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html

    .PARAMETER AdjustmentType
        The way in which EC2 instances are added if ScalingAdjustment is a positive number or terminated if ScalingAdjustment is a negative number each time the scaling activity is triggered. CHANGE_IN_CAPACITY is the default. CHANGE_IN_CAPACITY indicates that the EC2 instance count increments or decrements by ScalingAdjustment, which should be expressed as an integer. PERCENT_CHANGE_IN_CAPACITY indicates the instance count increments or decrements by the percentage specified by ScalingAdjustment, which should be expressed as an integer. For example, 20 indicates an increase in 20% increments of cluster capacity. EXACT_CAPACITY indicates the scaling activity results in an instance group with the number of EC2 instances specified by ScalingAdjustment, which should be expressed as a positive integer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-adjustmenttype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CoolDown
        The amount of time, in seconds, after a scaling activity completes before any further trigger-related scaling activities can start. The default value is 0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-cooldown
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ScalingAdjustment
        The amount by which to scale in or scale out, based on the specified AdjustmentType. A positive value adds to the instance group's EC2 instance count while a negative number removes instances. If AdjustmentType is set to EXACT_CAPACITY, the number should only be a positive integer. If AdjustmentType is set to PERCENT_CHANGE_IN_CAPACITY, the value should express the percentage as an integer. For example, -20 indicates a decrease in 20% increments of cluster capacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-scalingadjustment
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.SimpleScalingPolicyConfiguration')]
    [cmdletbinding()]
    Param
    (
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
        $AdjustmentType,
        [parameter(Mandatory = $false)]
        [Int]
        $CoolDown,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.SimpleScalingPolicyConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
