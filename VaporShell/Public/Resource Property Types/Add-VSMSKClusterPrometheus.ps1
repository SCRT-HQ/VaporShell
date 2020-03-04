function Add-VSMSKClusterPrometheus {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.Prometheus resource property to the template. Prometheus settings for open monitoring.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.Prometheus resource property to the template.
Prometheus settings for open monitoring.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html

    .PARAMETER JmxExporter
        Indicates whether you want to enable or disable the JMX Exporter.

        Type: JmxExporter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-jmxexporter
        UpdateType: Mutable

    .PARAMETER NodeExporter
        Indicates whether you want to enable or disable the Node Exporter.

        Type: NodeExporter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-nodeexporter
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.Prometheus')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $JmxExporter,
        [parameter(Mandatory = $false)]
        $NodeExporter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.Prometheus'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
