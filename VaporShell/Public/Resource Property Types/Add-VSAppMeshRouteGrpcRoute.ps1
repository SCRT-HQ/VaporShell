function Add-VSAppMeshRouteGrpcRoute {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Route.GrpcRoute resource property to the template. An object that represents a gRPC route type.

    .DESCRIPTION
        Adds an AWS::AppMesh::Route.GrpcRoute resource property to the template.
An object that represents a gRPC route type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html

    .PARAMETER Action
        An object that represents the action to take if a match is determined.

        Type: GrpcRouteAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-action
        UpdateType: Mutable

    .PARAMETER RetryPolicy
        An object that represents a retry policy.

        Type: GrpcRetryPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-retrypolicy
        UpdateType: Mutable

    .PARAMETER Match
        An object that represents the criteria for determining a request match.

        Type: GrpcRouteMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-match
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.Route.GrpcRoute')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Action,
        [parameter(Mandatory = $false)]
        $RetryPolicy,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.Route.GrpcRoute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
