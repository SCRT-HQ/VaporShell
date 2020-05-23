function Add-VSAppMeshVirtualNodeVirtualNodeSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeSpec resource property to the template. An object that represents the specification of a virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeSpec resource property to the template.
An object that represents the specification of a virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html

    .PARAMETER Logging
        The inbound and outbound access logging information for the virtual node.

        Type: Logging
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-logging
        UpdateType: Mutable

    .PARAMETER Backends
        The backends that the virtual node is expected to send outbound traffic to.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backends
        ItemType: Backend
        UpdateType: Mutable

    .PARAMETER Listeners
        The listener that the virtual node is expected to receive inbound traffic from. You can specify one listener.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-listeners
        ItemType: Listener
        UpdateType: Mutable

    .PARAMETER BackendDefaults
        A reference to an object that represents the defaults for backends.

        Type: BackendDefaults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backenddefaults
        UpdateType: Mutable

    .PARAMETER ServiceDiscovery
        The service discovery information for the virtual node. If your virtual node does not expect ingress traffic, you can omit this parameter. If you specify a listener, then you must specify service discovery information.

        Type: ServiceDiscovery
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-servicediscovery
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeSpec')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Logging,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppMesh.VirtualNode.Backend"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Backends,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppMesh.VirtualNode.Listener"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Listeners,
        [parameter(Mandatory = $false)]
        $BackendDefaults,
        [parameter(Mandatory = $false)]
        $ServiceDiscovery
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeSpec'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
