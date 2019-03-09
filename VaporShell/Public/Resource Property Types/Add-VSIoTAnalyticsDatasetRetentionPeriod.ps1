function Add-VSIoTAnalyticsDatasetRetentionPeriod {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.RetentionPeriod resource property to the template

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.RetentionPeriod resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html

    .PARAMETER NumberOfDays
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-numberofdays    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER Unlimited
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-unlimited    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.RetentionPeriod')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $NumberOfDays,
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $Unlimited
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.RetentionPeriod'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
