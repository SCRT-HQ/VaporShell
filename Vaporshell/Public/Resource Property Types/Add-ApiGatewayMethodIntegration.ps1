function Add-ApiGatewayMethodIntegration {
    <#
    .SYNOPSIS
        Integration is a property of the AWS::ApiGateway::Method resource that specifies information about the target back end that an Amazon API Gateway (API Gateway) method calls.
    
    .DESCRIPTION
        Integration is a property of the AWS::ApiGateway::Method resource that specifies information about the target back end that an Amazon API Gateway (API Gateway) method calls.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html
    
    .PARAMETER CacheKeyParameters
        A list of request parameters whose values API Gateway will cache.
    
    .PARAMETER CacheNamespace
        An API-specific tag group of related cached parameters.
    
    .PARAMETER IntegrationARN
        The credentials required for the integration. To specify an AWS Identity and Access Management (IAM) role that API Gateway assumes, specify the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify `arn:aws:iam::*:user/*`.

        To use resource-based permissions on the AWS Lambda (Lambda) function, don't specify this property. Use the AWS::Lambda::Permission resource to permit API Gateway to call the function. For more information, see Allow Amazon API Gateway to Invoke a Lambda Function in the AWS Lambda Developer Guide.
    
    .PARAMETER IntegrationHttpMethod
        The integration's HTTP method type.
    
    .PARAMETER IntegrationResponses
        The response that API Gateway provides after a method's back end completes processing a request. API Gateway intercepts the back end's response so that you can control how API Gateway surfaces back-end responses. For example, you can map the back-end status codes to codes that you define.
    
    .PARAMETER PassthroughBehavior
        Indicates when API Gateway passes requests to the targeted back end. This behavior depends on the request's Content-Type header and whether you defined a mapping template for it.

        For more information and valid values, see the passthroughBehavior field in the API Gateway API Reference.

    .PARAMETER RequestParameters
        The request parameters that API Gateway sends with the back-end request. Specify request parameters as key-value pairs (string-to-string maps), with a destination as the key and a source as the value.

        Specify the destination using the following pattern integration.request.location.name, where location is querystring, path, or header, and name is a valid, unique parameter name.

        The source must be an existing method request parameter or a static value. Static values must be enclosed in single quotation marks and pre-encoded based on their destination in the request.

    .PARAMETER RequestTemplates
        A map of Apache Velocity templates that are applied on the request payload. The template that API Gateway uses is based on the value of the Content-Type header sent by the client. The content type value is the key, and the template is the value (specified as a string), such as the following snippet:

            @{
                "application/json" = "{`n    `"statusCode`": `"200`"`n}"
            }

        For more information about templates, see API Gateway API Request and Response Payload-Mapping Template Reference in the API Gateway Developer Guide.

    .PARAMETER Type
        The type of back end your method is running, such as HTTP or MOCK. For all of the valid values, see the type property for the Integration resource in the Amazon API Gateway REST API Reference.
    
    .PARAMETER Uri
        The integration's Uniform Resource Identifier (URI).

        If you specify HTTP for the Type property, specify the API endpoint URL.

        If you specify MOCK for the Type property, don't specify this property.

        If you specify AWS for the Type property, specify an AWS service that follows the form: `arn:aws:apigateway:region:subdomain.service|service:path|action/service_api`. For example, a Lambda function URI follows the form: `arn:aws:apigateway:region:lambda:path/path`. The path is usually in the form `/2015-03-31/functions/LambdaFunctionARN/invocations`. For more information, see the uri property of the Integration resource in the Amazon API Gateway REST API Reference.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Method.Integration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.String[]]
        $CacheKeyParameters,
        [parameter(Mandatory = $false)]
        [System.String]
        $CacheNamespace,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $IntegrationARN,
        [parameter(Mandatory = $false)]
        [System.String]
        $IntegrationHttpMethod,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApiGateway.Method.Integration.IntegrationResponse"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $IntegrationResponses,
        [parameter(Mandatory = $false)]
        [System.String]
        $PassthroughBehavior,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $RequestParameters,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $RequestTemplates,
        [parameter(Mandatory = $false)]
        [ValidateSet("OFF","ERROR","INFO")]
        [System.String]
        $LoggingLevel,
        [parameter(Mandatory = $false)]
        [PSTypeName('Vaporshell.Resource.ApiGateway.Deployment.StageDescription.MethodSetting')]
        $MethodSettings,
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $MetricsEnabled,
        [parameter(Mandatory = $false)]
        [System.String]
        $StageName,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingBurstLimit,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingRateLimit,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Helper.Variable"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Variables
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            if ($key -like "*Enabled" -or $key -Like "*Encrypted") {
                $obj | Add-Member -MemberType NoteProperty -Name $key -Value $(((Get-Variable $key).Value).ToLower())
            }
            elseif ($key -eq "Variables") {
                $obj | Add-Member -MemberType NoteProperty -Name "Variables" -Value $Variables
            }
            else {
                $obj | Add-Member -MemberType NoteProperty -Name $key -Value $((Get-Variable $key).Value)
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Method.Integration'
    }
}