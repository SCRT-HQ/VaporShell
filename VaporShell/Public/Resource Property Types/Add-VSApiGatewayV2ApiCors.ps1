function Add-VSApiGatewayV2ApiCors {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::Api.Cors resource property to the template. The Cors property specifies a CORS configuration for an API. Supported only for HTTP APIs. See Configuring CORS: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html for more information.

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::Api.Cors resource property to the template.
The Cors property specifies a CORS configuration for an API. Supported only for HTTP APIs. See Configuring CORS: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html for more information.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html

    .PARAMETER AllowOrigins
        Represents a collection of allowed origins. Supported only for HTTP APIs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-alloworigins
        UpdateType: Mutable

    .PARAMETER AllowCredentials
        Specifies whether credentials are included in the CORS request. Supported only for HTTP APIs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowcredentials
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ExposeHeaders
        Represents a collection of exposed headers. Supported only for HTTP APIs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-exposeheaders
        UpdateType: Mutable

    .PARAMETER AllowHeaders
        Represents a collection of allowed headers. Supported only for HTTP APIs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowheaders
        UpdateType: Mutable

    .PARAMETER MaxAge
        The number of seconds that the browser should cache preflight request results. Supported only for HTTP APIs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-maxage
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER AllowMethods
        Represents a collection of allowed HTTP methods. Supported only for HTTP APIs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowmethods
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGatewayV2.Api.Cors')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","AllowCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","AllowCredentials")]
    Param
    (
        [parameter(Mandatory = $false)]
        $AllowOrigins,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AllowCredentials,
        [parameter(Mandatory = $false)]
        $ExposeHeaders,
        [parameter(Mandatory = $false)]
        $AllowHeaders,
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
        $MaxAge,
        [parameter(Mandatory = $false)]
        $AllowMethods
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.Api.Cors'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
