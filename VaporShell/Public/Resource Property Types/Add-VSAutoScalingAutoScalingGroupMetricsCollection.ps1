function Add-VSAutoScalingAutoScalingGroupMetricsCollection {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.MetricsCollection resource property to the template. MetricsCollection is a property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that describes the group metrics that an Amazon EC2 Auto Scaling group sends to Amazon CloudWatch. These metrics describe the group rather than any of its instances.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.MetricsCollection resource property to the template.
MetricsCollection is a property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that describes the group metrics that an Amazon EC2 Auto Scaling group sends to Amazon CloudWatch. These metrics describe the group rather than any of its instances.

For more information, see Monitoring Your Auto Scaling Groups and Instances Using Amazon CloudWatch: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html in the *Amazon EC2 Auto Scaling User Guide*. You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section of the AWS::AutoScaling::AutoScalingGroup documentation.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html

    .PARAMETER Granularity
        The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch.
*Allowed Values*: 1Minute

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-granularity
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Metrics
        The list of Auto Scaling group metrics to collect. If you specify Granularity and don't specify any metrics, all metrics are enabled.
*Allowed Values*:
+ GroupMinSize
+ GroupMaxSize
+ GroupDesiredCapacity
+ GroupInServiceInstances
+ GroupPendingInstances
+ GroupStandbyInstances
+ GroupTerminatingInstances
+ GroupTotalInstances

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-metrics
        DuplicatesAllowed: True
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.MetricsCollection')]
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
        $Granularity,
        [parameter(Mandatory = $false)]
        $Metrics
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.MetricsCollection'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
