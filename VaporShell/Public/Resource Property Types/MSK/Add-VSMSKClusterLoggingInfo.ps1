function Add-VSMSKClusterLoggingInfo {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.LoggingInfo resource property to the template. You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.LoggingInfo resource property to the template.
You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html

    .PARAMETER BrokerLogs
        You can configure your MSK cluster to send broker logs to different destination types. This configuration specifies the details of these destinations.

        Type: BrokerLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html#cfn-msk-cluster-logginginfo-brokerlogs
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.LoggingInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $BrokerLogs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.LoggingInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
