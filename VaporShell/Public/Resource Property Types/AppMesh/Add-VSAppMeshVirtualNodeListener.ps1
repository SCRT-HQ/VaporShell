function Add-VSAppMeshVirtualNodeListener {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template. An object that represents a listener for a virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template.
An object that represents a listener for a virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html

    .PARAMETER HealthCheck
        The health check information for the listener.

        Type: HealthCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
        UpdateType: Mutable

    .PARAMETER TLS
        A reference to an object that represents the Transport Layer Security TLS properties for a listener.

        Type: ListenerTls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-tls
        UpdateType: Mutable

    .PARAMETER PortMapping
        The port mapping information for the listener.

        Type: PortMapping
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.Listener')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HealthCheck,
        [parameter(Mandatory = $false)]
        $TLS,
        [parameter(Mandatory = $true)]
        $PortMapping
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.Listener'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
