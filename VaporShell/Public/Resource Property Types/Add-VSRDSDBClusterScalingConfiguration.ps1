function Add-VSRDSDBClusterScalingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::RDS::DBCluster.ScalingConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::RDS::DBCluster.ScalingConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html

    .PARAMETER AutoPause
        A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in serverless DB engine mode. A DB cluster can be paused only when it's idle it has no connections.
If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-autopause
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER MaxCapacity
        The maximum capacity for an Aurora DB cluster in serverless DB engine mode.
Valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.
The maximum capacity must be greater than or equal to the minimum capacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-maxcapacity
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MinCapacity
        The minimum capacity for an Aurora DB cluster in serverless DB engine mode.
Valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.
The minimum capacity must be less than or equal to the maximum capacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-mincapacity
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER SecondsUntilAutoPause
        The time, in seconds, before an Aurora DB cluster in serverless mode is paused.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsuntilautopause
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.RDS.DBCluster.ScalingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AutoPause,
        [parameter(Mandatory = $false)]
        [Int]
        $MaxCapacity,
        [parameter(Mandatory = $false)]
        [Int]
        $MinCapacity,
        [parameter(Mandatory = $false)]
        [Int]
        $SecondsUntilAutoPause
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RDS.DBCluster.ScalingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
