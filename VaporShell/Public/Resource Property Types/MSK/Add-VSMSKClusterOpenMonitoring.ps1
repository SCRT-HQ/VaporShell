function Add-VSMSKClusterOpenMonitoring {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.OpenMonitoring resource property to the template. JMX and Node monitoring for the MSK cluster.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.OpenMonitoring resource property to the template.
JMX and Node monitoring for the MSK cluster.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-openmonitoring.html

    .PARAMETER Prometheus
        Prometheus exporter settings.

        Type: Prometheus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-openmonitoring.html#cfn-msk-cluster-openmonitoring-prometheus
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.OpenMonitoring')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Prometheus
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.OpenMonitoring'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
