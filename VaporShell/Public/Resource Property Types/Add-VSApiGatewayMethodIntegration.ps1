function Add-VSApiGatewayMethodIntegration {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method.Integration resource property to the template. Integration is a property of the AWS::ApiGateway::Method: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html resource that specifies information about the target backend that a method calls.

    .DESCRIPTION
        Adds an AWS::ApiGateway::Method.Integration resource property to the template.
Integration is a property of the AWS::ApiGateway::Method: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html resource that specifies information about the target backend that a method calls.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html

    .PARAMETER CacheKeyParameters
        A list of request parameters whose values API Gateway caches. These parameters must also be specified in RequestParameters: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestparameters to be supported in CacheKeyParameters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachekeyparameters
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER CacheNamespace
        An API-specific tag group of related cached parameters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachenamespace
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ConnectionId
        The ID of the VpcLink used for the integration when connectionType=VPC_LINK, otherwise undefined.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-connectionid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ConnectionType
        The type of the network connection to the integration endpoint. The valid value is INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and a network load balancer in a VPC. The default value is INTERNET.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-connectiontype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ContentHandling
        Specifies how to handle request payload content type conversions. Valid values are:
+ CONVERT_TO_BINARY: Converts a request payload from a base64-encoded string to a binary blob.
+ CONVERT_TO_TEXT: Converts a request payload from a binary blob to a base64-encoded string.
If this property isn't defined, the request payload is passed through from the method request to the integration request without modification, provided that the PassthroughBehaviors property is configured to support payload pass-through.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-contenthandling
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Credentials
        The credentials that are required for the integration. To specify an AWS Identity and Access Management IAM role that API Gateway assumes, specify the role's Amazon Resource Name ARN. To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*.
To use resource-based permissions on the AWS Lambda Lambda function, don't specify this property. Use the AWS::Lambda::Permission: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html resource to permit API Gateway to call the function. For more information, see Allow Amazon API Gateway to Invoke a Lambda Function: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#access-control-resource-based-example-apigateway-invoke-function in the *AWS Lambda Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-credentials
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER IntegrationHttpMethod
        The integration's HTTP method type.
For the Type property, if you specify MOCK, this property is optional. For all other types, you must specify this property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationhttpmethod
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER IntegrationResponses
        The response that API Gateway provides after a method's backend completes processing a request. API Gateway intercepts the response from the backend so that you can control how API Gateway surfaces backend responses. For example, you can map the backend status codes to codes that you define.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationresponses
        DuplicatesAllowed: False
        ItemType: IntegrationResponse
        Type: List
        UpdateType: Mutable

    .PARAMETER PassthroughBehavior
        Indicates when API Gateway passes requests to the targeted backend. This behavior depends on the request's Content-Type header and whether you defined a mapping template for it.
For more information and valid values, see the passthroughBehavior: https://docs.aws.amazon.com/apigateway/api-reference/link-relation/integration-put/#passthroughBehavior field in the *API Gateway API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-passthroughbehavior
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RequestParameters
        The request parameters that API Gateway sends with the backend request. Specify request parameters as key-value pairs string-to-string mappings, with a destination as the key and a source as the value.
Specify the destination by using the following pattern integration.request.location.name, where *location* is query string, path, or header, and *name* is a valid, unique parameter name.
The source must be an existing method request parameter or a static value. You must enclose static values in single quotation marks and pre-encode these values based on their destination in the request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requestparameters
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER RequestTemplates
        A map of Apache Velocity templates that are applied on the request payload. The template that API Gateway uses is based on the value of the Content-Type header that's sent by the client. The content type value is the key, and the template is the value specified as a string, such as the following snippet:
"application/json": "{n "statusCode": 200n}"
For more information about templates, see API Gateway Mapping Template and Access Logging Variable Reference: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html in the *API Gateway Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requesttemplates
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER TimeoutInMillis
        Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-timeoutinmillis
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Type
        The type of backend that your method is running, such as HTTP or MOCK. For all of the valid values, see the type: https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#type property for the Integration resource in the *Amazon API Gateway REST API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Uri
        The Uniform Resource Identifier URI for the integration.
If you specify HTTP for the Type property, specify the API endpoint URL.
If you specify MOCK for the Type property, don't specify this property.
If you specify AWS for the Type property, specify an AWS service that follows this form: arn:aws:apigateway:*region*:*subdomain*.*service|service*:*path|action*/*service_api*. For example, a Lambda function URI follows this form: arn:aws:apigateway:*region*:lambda:path/*path*. The path is usually in the form /2015-03-31/functions/*LambdaFunctionARN*/invocations. For more information, see the uri property of the Integration: https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/ resource in the Amazon API Gateway REST API Reference.
If you specified HTTP or AWS for the Type property, you must specify this property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-uri
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Method.Integration')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","Credentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","Credentials")]
    Param
    (
        [parameter(Mandatory = $false)]
        $CacheKeyParameters,
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
        $CacheNamespace,
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
        $ConnectionId,
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
        $ConnectionType,
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
        $ContentHandling,
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
        $Credentials,
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
        $IntegrationHttpMethod,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApiGateway.Method.IntegrationResponse"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IntegrationResponses,
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
        $PassthroughBehavior,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $RequestParameters,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $RequestTemplates,
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
        $TimeoutInMillis,
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
        $Type,
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
        $Uri
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Method.Integration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
