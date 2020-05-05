function Add-VSAppMeshVirtualNodeClientPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.ClientPolicy resource property to the template. An object that represents a client policy.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.ClientPolicy resource property to the template.
An object that represents a client policy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html

    .PARAMETER TLS
        A reference to an object that represents a Transport Layer Security TLS client policy.

        Type: ClientPolicyTls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html#cfn-appmesh-virtualnode-clientpolicy-tls
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.ClientPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TLS
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.ClientPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
