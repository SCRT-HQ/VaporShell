function Add-VSAppMeshVirtualNodeAccessLog {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.AccessLog resource property to the template. An object that represents the access logging information for a virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.AccessLog resource property to the template.
An object that represents the access logging information for a virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html

    .PARAMETER File
        The file object to send virtual node access logs to.

        Type: FileAccessLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html#cfn-appmesh-virtualnode-accesslog-file
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.AccessLog')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $File
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.AccessLog'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
