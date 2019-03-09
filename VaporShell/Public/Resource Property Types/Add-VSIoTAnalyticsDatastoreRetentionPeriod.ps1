function Add-VSIoTAnalyticsDatastoreRetentionPeriod {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.RetentionPeriod resource property to the template

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.RetentionPeriod resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html

    .PARAMETER NumberOfDays
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-numberofdays    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER Unlimited
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-unlimited    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.RetentionPeriod')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $NumberOfDays,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.RetentionPeriod'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
