function Add-VSApiGatewayV2AuthorizerJWTConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::Authorizer.JWTConfiguration resource property to the template. The JWTConfiguration property specifies the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::Authorizer.JWTConfiguration resource property to the template.
The JWTConfiguration property specifies the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html

    .PARAMETER Issuer
        The base domain of the identity provider that issues JSON Web Tokens. For example, an Amazon Cognito user pool has the following format: https://cognito-idp.{region}.amazonaws.com/{userPoolId} . Required for the JWT authorizer type. Supported only for HTTP APIs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-issuer
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Audience
        A list of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list. See RFC 7519: https://tools.ietf.org/html/rfc7519#section-4.1.3. Required for the JWT authorizer type. Supported only for HTTP APIs.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-audience
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGatewayV2.Authorizer.JWTConfiguration')]
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
        $Issuer,
        [parameter(Mandatory = $false)]
        $Audience
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.Authorizer.JWTConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
