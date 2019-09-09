function Add-VSAppMeshRouteHttpRoute {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Route.HttpRoute resource property to the template. An object representing the HTTP routing specification for a route.

    .DESCRIPTION
        Adds an AWS::AppMesh::Route.HttpRoute resource property to the template.
An object representing the HTTP routing specification for a route.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html

    .PARAMETER Action
        The action to take if a match is determined.

        Type: HttpRouteAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-action
        UpdateType: Mutable

    .PARAMETER Match
        The criteria for determining an HTTP request match.

        Type: HttpRouteMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-match
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.Route.HttpRoute')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Action,
        [parameter(Mandatory = $true)]
        $Match
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.Route.HttpRoute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
