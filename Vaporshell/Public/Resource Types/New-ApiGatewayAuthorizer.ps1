function New-ApiGatewayAuthorizer {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Authorizer resource to the template
    
    .DESCRIPTION
        The AWS::ApiGateway::Authorizer resource creates an authorization layer that Amazon API Gateway (API Gateway) activates for methods that have authorization enabled. API Gateway activates the authorizer when a client calls those methods.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html
    
    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

        In addition to the logical ID, certain resources also have a physical ID, which is the actual assigned name for that resource, such as an EC2 instance ID or an S3 bucket name. Use the physical IDs to identify resources outside of AWS CloudFormation templates, but only after the resources have been created. For example, you might give an EC2 instance resource a logical ID of MyEC2Instance; but when AWS CloudFormation creates the instance, AWS CloudFormation automatically generates and assigns a physical ID (such as i-28f9ba55) to the instance. You can use this physical ID to identify the instance and view its properties (such as the DNS name) by using the Amazon EC2 console. For resources that support custom names, you can assign your own names (physical IDs) to help you quickly identify resources. For example, you can name an S3 bucket that stores logs as MyPerformanceLogs.
    
    .PARAMETER AuthorizerARN
        The credentials required for the authorizer. To specify an AWS Identity and Access Management (IAM) role that API Gateway assumes, specify the role's Amazon Resource Name (ARN). To use resource-based permissions on the AWS Lambda (Lambda) function, specify null.
    
    .PARAMETER AuthorizerResultTtlInSeconds
        The time-to-live (TTL) period, in seconds, that specifies how long API Gateway caches authorizer results. If you specify a value greater than 0, API Gateway caches the authorizer responses. By default, API Gateway sets this property to 300. The maximum value is 3600, or 1 hour.
    
    .PARAMETER AuthorizerUri
        The authorizer's Uniform Resource Identifier (URI). If you specify `TOKEN` for the authorizer's Type property, specify a Lambda function URI, which has the form `arn:aws:apigateway:region:lambda:path/path`. The path usually has the form `/2015-03-31/functions/LambdaFunctionARN/invocations`.
    
    .PARAMETER IdentitySource
        The source of the identity in an incoming request. If you specify TOKEN for the authorizer's Type property, specify a mapping expression. The custom header mapping expression has the form method.request.header.name, where name is the name of a custom authorization header that clients submit as part of their requests.
    
    .PARAMETER IdentityValidationExpression
        A validation expression for the incoming identity. If you specify TOKEN for the authorizer's Type property, specify a regular expression. API Gateway uses the expression to attempt to match the incoming client token, and proceeds if the token matches. If the token doesn't match, API Gateway responds with a 401 (unauthorized request) error code.
    
    .PARAMETER Name
        The name of the authorizer.
    
    .PARAMETER ProviderARNs
        A list of the Amazon Cognito user pool Amazon Resource Names (ARNs) to associate with this authorizer. For more information, see Use Amazon Cognito Your User Pool in the API Gateway Developer Guide.
    
    .PARAMETER RestApiId
        The ID of the RestApi resource in which API Gateway creates the authorizer.
    
    .PARAMETER Type
        The type of authorizer:
        * For a custom authorizer that uses a Lambda function, use TOKEN.
        * For an authorizer that uses Amazon Cognito user pools, use COGNITO_USER_POOLS.
    
    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.

    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .EXAMPLE
        $templateInit = Initialize-Vaporshell -Description "Testing New-ApiGatewayAuthorizer"
        $templateInit.AddResource((New-ApiGatewayAuthorizer -LogicalId "Authorizer" -AuthorizerARN (Add-FnGetAtt -LogicalNameOfResource "LambdaInvocationRole" -AttributeName "Arn") -AuthorizerResultTtlInSeconds 300 -AuthorizerUri (Add-FnJoin -ListOfValues "arn:aws:apigateway:",(Add-FnRef -Ref "$_AWSRegion"),":lambda:path/2015-03-31/functions/",(Add-FnGetAtt -LogicalNameOfResource "LambdaAuthorizer" -AttributeName "Arn"),"/invocations") -Type TOKEN -IdentitySource "method.request.header.Auth" -Name "DefaultAuthorizer" -RestApiId (Add-FnRef -Ref "RestApi")))

        When the template is exported, this will convert to: 
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Testing New-ApiGatewayAuthorizer",
    "Resources": {
        "Authorizer": {
            "Type": "AWS::ApiGateway::Authorizer",
            "Properties": {
                "AuthorizerCredentials": {
                    "Fn::GetAtt": [
                        "LambdaInvocationRole",
                        "Arn"
                    ]
                },
                "AuthorizerResultTtlInSeconds": "300",
                "AuthorizerUri": {
                    "Fn::Join": [
                        "", [
                            "arn:aws:apigateway:",
                            {
                                "Ref": "AWS::Region"
                            },
                            ":lambda:path/2015-03-31/functions/",
                            {
                                "Fn::GetAtt": [
                                    "LambdaAuthorizer",
                                    "Arn"
                                ]
                            },
                            "/invocations"
                        ]
                    ]
                },
                "Type": "TOKEN",
                "IdentitySource": "method.request.header.Auth",
                "Name": "DefaultAuthorizer",
                "RestApiId": {
                    "Ref": "RestApi"
                }
            }
        }
    }
}
````
    
    .NOTES
        When the logical ID of this resource is provided to the Ref intrinsic function, Ref returns the API key ID, such as m2m1k7sybf.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Authorizer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false,Position = 1)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $AuthorizerARN,
        [parameter(Mandatory = $false,Position = 2)]
        [ValidateRange(0,3600)]
        [Int]
        $AuthorizerResultTtlInSeconds,
        [parameter(Mandatory = $false,Position = 3)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $AuthorizerUri,
        [parameter(Mandatory = $true,Position = 4)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $IdentitySource,
        [parameter(Mandatory = $false,Position = 5)]
        [System.String]
        $IdentityValidationExpression,
        [parameter(Mandatory = $true,Position = 6)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Name,
        [parameter(Mandatory = $false,Position = 7)]
        [System.String[]]
        $ProviderARNs,
        [parameter(Mandatory = $false,Position = 8)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $RestApiId,
        [parameter(Mandatory = $true,Position = 9)]
        [ValidateSet("TOKEN","COGNITO_USER_POOLS")]
        [System.String]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateSet("Delete","Retain")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [System.Management.Automation.PSCustomObject]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::ApiGateway::Authorizer"
        }
    }
    Process {
        switch ($PSBoundParameters.Keys) {
            'AuthorizerARN' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'AuthorizerCredentials' -Value $AuthorizerARN
            }
            'AuthorizerResultTtlInSeconds' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'AuthorizerResultTtlInSeconds' -Value $(($AuthorizerResultTtlInSeconds).ToString())
            }
            'AuthorizerUri' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'AuthorizerUri' -Value $AuthorizerUri
            }
            'IdentitySource' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'IdentitySource' -Value $IdentitySource
            }
            'IdentityValidationExpression' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'IdentityValidationExpression' -Value $IdentityValidationExpression
            }
            'Name' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'Name' -Value $Name
            }
            'ProviderARNs' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'ProviderARNs' -Value $ProviderARNs
            }
            'RestApiId' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'RestApiId' -Value $RestApiId
            }
            'Type' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'Type' -Value $Type
            }
            'DeletionPolicy' {
                $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
            }
            'DependsOn' {
                $ResourceParams.Add("DependsOn",$DependsOn)
            }
            'Metadata' {
                $ResourceParams.Add("Metadata",$Metadata)
            }
            'UpdatePolicy' {
                $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
            }
            'Condition' {
                $ResourceParams.Add("Condition",$Condition)
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Authorizer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}