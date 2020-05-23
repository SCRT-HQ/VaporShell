function Add-VSAppMeshVirtualNodeTlsValidationContextAcmTrust {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.TlsValidationContextAcmTrust resource property to the template. An object that represents a TLS validation context trust for an AWS Certicate Manager (ACM certificate.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.TlsValidationContextAcmTrust resource property to the template.
An object that represents a TLS validation context trust for an AWS Certicate Manager (ACM certificate.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html

    .PARAMETER CertificateAuthorityArns
        One or more ACM Amazon Resource Name ARNs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html#cfn-appmesh-virtualnode-tlsvalidationcontextacmtrust-certificateauthorityarns
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.TlsValidationContextAcmTrust')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CertificateAuthorityArns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.TlsValidationContextAcmTrust'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
