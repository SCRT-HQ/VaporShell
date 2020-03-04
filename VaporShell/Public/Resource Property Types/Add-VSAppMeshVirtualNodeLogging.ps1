function Add-VSAppMeshVirtualNodeLogging {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.Logging resource property to the template. An object that represents the logging information for a virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.Logging resource property to the template.
An object that represents the logging information for a virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html

    .PARAMETER AccessLog
        The access log configuration for a virtual node.

        Type: AccessLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html#cfn-appmesh-virtualnode-logging-accesslog
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.Logging')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AccessLog
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.Logging'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
