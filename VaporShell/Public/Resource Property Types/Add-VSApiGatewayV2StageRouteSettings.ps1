function Add-VSApiGatewayV2StageRouteSettings {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::Stage.RouteSettings resource property to the template

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::Stage.RouteSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html

    .PARAMETER LoggingLevel
        Specifies the logging level for this route: DEBUG, INFO, or WARN. This property affects the log entries pushed to Amazon CloudWatch Logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-logginglevel
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DataTraceEnabled
        Specifies whether true or not false data trace logging is enabled for this route. This property affects the log entries pushed to Amazon CloudWatch Logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-datatraceenabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ThrottlingBurstLimit
        Specifies the throttling burst limit.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingburstlimit
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER DetailedMetricsEnabled
        Specifies whether detailed metrics are enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-detailedmetricsenabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ThrottlingRateLimit
        Specifies the throttling rate limit.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingratelimit
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGatewayV2.Stage.RouteSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LoggingLevel,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DataTraceEnabled,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingBurstLimit,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DetailedMetricsEnabled,
        [parameter(Mandatory = $false)]
        [System.Double]
        $ThrottlingRateLimit
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.Stage.RouteSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
