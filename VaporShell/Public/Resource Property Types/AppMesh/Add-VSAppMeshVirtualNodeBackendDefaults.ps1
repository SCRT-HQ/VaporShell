function Add-VSAppMeshVirtualNodeBackendDefaults {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.BackendDefaults resource property to the template. An object that represents the default properties for a backend.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.BackendDefaults resource property to the template.
An object that represents the default properties for a backend.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backenddefaults.html

    .PARAMETER ClientPolicy
        A reference to an object that represents a client policy.

        Type: ClientPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backenddefaults.html#cfn-appmesh-virtualnode-backenddefaults-clientpolicy
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.BackendDefaults')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ClientPolicy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.BackendDefaults'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
