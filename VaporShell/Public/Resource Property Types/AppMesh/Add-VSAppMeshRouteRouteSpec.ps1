function Add-VSAppMeshRouteRouteSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Route.RouteSpec resource property to the template. An object that represents a route specification. Specify one route type.

    .DESCRIPTION
        Adds an AWS::AppMesh::Route.RouteSpec resource property to the template.
An object that represents a route specification. Specify one route type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html

    .PARAMETER HttpRoute
        An object that represents the specification of an HTTP route.

        Type: HttpRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
        UpdateType: Mutable

    .PARAMETER Priority
        The priority for the route. Routes are matched based on the specified value, where 0 is the highest priority.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Http2Route
        An object that represents the specification of an HTTP/2 route.

        Type: HttpRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-http2route
        UpdateType: Mutable

    .PARAMETER GrpcRoute
        An object that represents the specification of a gRPC route.

        Type: GrpcRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-grpcroute
        UpdateType: Mutable

    .PARAMETER TcpRoute
        An object that represents the specification of a TCP route.

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
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Priority,
        [parameter(Mandatory = $false)]
        $Http2Route,
        [parameter(Mandatory = $false)]
        $GrpcRoute,
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
