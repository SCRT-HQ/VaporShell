function Add-VSAppMeshVirtualNodeTlsValidationContext {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.TlsValidationContext resource property to the template. An object that represents a Transport Layer Security (TLS validation context.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.TlsValidationContext resource property to the template.
An object that represents a Transport Layer Security (TLS validation context.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html

    .PARAMETER Trust
        A reference to an object that represents a TLS validation context trust.

        Type: TlsValidationContextTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontext.html#cfn-appmesh-virtualnode-tlsvalidationcontext-trust
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.TlsValidationContext')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Trust
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.TlsValidationContext'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
