function Add-VSAppMeshVirtualServiceVirtualServiceSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualService.VirtualServiceSpec resource property to the template. An object representing the specification of a virtual service.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualService.VirtualServiceSpec resource property to the template.
An object representing the specification of a virtual service.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html

    .PARAMETER Provider
        The App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.

        Type: VirtualServiceProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html#cfn-appmesh-virtualservice-virtualservicespec-provider
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualService.VirtualServiceSpec')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Provider
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualService.VirtualServiceSpec'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
