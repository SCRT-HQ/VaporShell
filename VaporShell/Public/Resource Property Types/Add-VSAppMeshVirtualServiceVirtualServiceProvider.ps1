function Add-VSAppMeshVirtualServiceVirtualServiceProvider {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualService.VirtualServiceProvider resource property to the template. An object representing the provider for a virtual service.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualService.VirtualServiceProvider resource property to the template.
An object representing the provider for a virtual service.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html

    .PARAMETER VirtualNode
        The virtual node associated with a virtual service.

        Type: VirtualNodeServiceProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode
        UpdateType: Mutable

    .PARAMETER VirtualRouter
        The virtual router associated with a virtual service.

        Type: VirtualRouterServiceProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualService.VirtualServiceProvider')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $VirtualNode,
        [parameter(Mandatory = $false)]
        $VirtualRouter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualService.VirtualServiceProvider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
