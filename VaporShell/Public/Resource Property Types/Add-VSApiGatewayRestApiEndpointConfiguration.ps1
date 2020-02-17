function Add-VSApiGatewayRestApiEndpointConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::RestApi.EndpointConfiguration resource property to the template. The EndpointConfiguration property type specifies the endpoint types of a REST API.

    .DESCRIPTION
        Adds an AWS::ApiGateway::RestApi.EndpointConfiguration resource property to the template.
The EndpointConfiguration property type specifies the endpoint types of a REST API.

EndpointConfiguration is a property of the AWS::ApiGateway::RestApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html

    .PARAMETER Types
        A list of endpoint types of an API or its custom domain name. Valid values include:
+ EDGE: For an edge-optimized API and its custom domain name.
+ REGIONAL: For a regional API and its custom domain name.
+ PRIVATE: For a private API.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER VpcEndpointIds
        + RestApi: https://docs.aws.amazon.com/apigateway/api-reference/resource/rest-api/ in the *Amazon API Gateway REST API Reference*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-vpcendpointids
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.RestApi.EndpointConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Types,
        [parameter(Mandatory = $false)]
        $VpcEndpointIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.RestApi.EndpointConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
