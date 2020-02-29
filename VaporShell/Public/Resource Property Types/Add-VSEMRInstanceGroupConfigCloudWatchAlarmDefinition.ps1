function Add-VSEMRInstanceGroupConfigCloudWatchAlarmDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceGroupConfig.CloudWatchAlarmDefinition resource property to the template. CloudWatchAlarmDefinition is a subproperty of the ScalingTrigger property, which determines when to trigger an automatic scaling activity. Scaling activity begins when you satisfy the defined alarm conditions.

    .DESCRIPTION
        Adds an AWS::EMR::InstanceGroupConfig.CloudWatchAlarmDefinition resource property to the template.
CloudWatchAlarmDefinition is a subproperty of the ScalingTrigger property, which determines when to trigger an automatic scaling activity. Scaling activity begins when you satisfy the defined alarm conditions.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html

    .PARAMETER ComparisonOperator
        Determines how the metric specified by MetricName is compared to the value specified by Threshold.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-comparisonoperator
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Dimensions
        A CloudWatch metric dimension.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-dimensions
        DuplicatesAllowed: False
        ItemType: MetricDimension
        Type: List
        UpdateType: Mutable

    .PARAMETER EvaluationPeriods
        The number of periods, expressed in seconds using Period, during which the alarm condition must exist before the alarm triggers automatic scaling activity. The default value is 1.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-evaluationperiods
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MetricName
        The name of the CloudWatch metric that is watched to determine an alarm condition.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-metricname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Namespace
        The namespace for the CloudWatch metric. The default is AWS/ElasticMapReduce.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-namespace
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Period
        The period, in seconds, over which the statistic is applied. EMR CloudWatch metrics are emitted every five minutes 300 seconds, so if an EMR CloudWatch metric is specified, specify 300.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-period
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Statistic
        The statistic to apply to the metric associated with the alarm. The default is AVERAGE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-statistic
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Threshold
        The value against which the specified statistic is compared.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-threshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER Unit
        The unit of measure associated with the CloudWatch metric being watched. The value specified for Unit must correspond to the units specified in the CloudWatch metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-unit
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceGroupConfig.CloudWatchAlarmDefinition')]
    [cmdletbinding()]
    Param
    (
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
        $ComparisonOperator,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EMR.InstanceGroupConfig.MetricDimension"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Dimensions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EvaluationPeriods,
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
        $MetricName,
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
        $Namespace,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Period,
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
        $Statistic,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Threshold,
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
        $Unit
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceGroupConfig.CloudWatchAlarmDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
