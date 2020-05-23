function Add-VSAppMeshRouteHttpRetryPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Route.HttpRetryPolicy resource property to the template. An object that represents a retry policy. Specify at least one value for at least one of the types of RetryEvents, a value for maxRetries, and a value for perRetryTimeout.

    .DESCRIPTION
        Adds an AWS::AppMesh::Route.HttpRetryPolicy resource property to the template.
An object that represents a retry policy. Specify at least one value for at least one of the types of RetryEvents, a value for maxRetries, and a value for perRetryTimeout.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html

    .PARAMETER MaxRetries
        The maximum number of retry attempts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-maxretries
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER PerRetryTimeout
        An object that represents a duration of time.

        Type: Duration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-perretrytimeout
        UpdateType: Mutable

    .PARAMETER HttpRetryEvents
        Specify at least one of the following values.
+ **server-error** – HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511
+ **gateway-error** – HTTP status codes 502, 503, and 504
+ **client-error** – HTTP status code 409
+ **stream-error** – Retry on refused stream

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-httpretryevents
        UpdateType: Mutable

    .PARAMETER TcpRetryEvents
        Specify a valid value.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-tcpretryevents
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.Route.HttpRetryPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxRetries,
        [parameter(Mandatory = $true)]
        $PerRetryTimeout,
        [parameter(Mandatory = $false)]
        $HttpRetryEvents,
        [parameter(Mandatory = $false)]
        $TcpRetryEvents
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.Route.HttpRetryPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
