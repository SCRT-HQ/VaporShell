function Add-VSIoTAnalyticsDatastoreDatastoreStorage {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.DatastoreStorage resource property to the template. Where data store data is stored.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.DatastoreStorage resource property to the template.
Where data store data is stored.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html

    .PARAMETER CustomerManagedS3
        Use this to store data store data in an S3 bucket that you manage. The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the data store.

        Type: CustomerManagedS3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-customermanageds3
        UpdateType: Mutable

    .PARAMETER ServiceManagedS3
        Use this to store data store data in an S3 bucket managed by the AWS IoT Analytics service. The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the data store.

        Type: ServiceManagedS3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-servicemanageds3
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.DatastoreStorage')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomerManagedS3,
        [parameter(Mandatory = $false)]
        $ServiceManagedS3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.DatastoreStorage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
