function Add-VSAppMeshRouteRouteSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Route.RouteSpec resource property to the template

    .DESCRIPTION
        Adds an AWS::AppMesh::Route.RouteSpec resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html

    .PARAMETER HttpRoute
        The HTTP routing information for the route.

        Type: HttpRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
        UpdateType: Mutable

    .PARAMETER Priority
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER TcpRoute
        The TCP routing information for the route.

        Type: TcpRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.Route.RouteSpec')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HttpRoute,
        [parameter(Mandatory = $false)]
        [Int]
        $Priority,
        [parameter(Mandatory = $false)]
        $TcpRoute
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.Route.RouteSpec'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
