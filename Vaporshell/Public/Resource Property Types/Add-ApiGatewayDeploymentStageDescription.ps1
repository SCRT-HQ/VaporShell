function Add-ApiGatewayDeploymentStageDescription {
    <#
    .SYNOPSIS
        StageDescription is a property of the AWS::ApiGateway::Deployment resource that configures an Amazon API Gateway (API Gateway) deployment stage
    
    .DESCRIPTION
        StageDescription is a property of the AWS::ApiGateway::Deployment resource that configures an Amazon API Gateway (API Gateway) deployment stage.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html
    
    .PARAMETER CacheClusterEnabled
        Indicates whether cache clustering is enabled for the stage.
    
    .PARAMETER CacheClusterSize
        The size of the stage's cache cluster.
    
    .PARAMETER CacheDataEncrypted
        Indicates whether the cached responses are encrypted.
    
    .PARAMETER CacheTtlInSeconds
        The time-to-live (TTL) period, in seconds, that specifies how long API Gateway caches responses.
    
    .PARAMETER CachingEnabled
        Indicates whether responses are cached and returned for requests. You must enable a cache cluster on the stage to cache responses. For more information, see Enable API Gateway Caching in a Stage to Enhance API Performance in the API Gateway Developer Guide.
    
    .PARAMETER ClientCertificateId
        The identifier of the client certificate that API Gateway uses to call your integration endpoints in the stage.

    .PARAMETER DataTraceEnabled
        Indicates whether data trace logging is enabled for methods in the stage. API Gateway pushes these logs to Amazon CloudWatch Logs.

    .PARAMETER Description
        A description of the purpose of the stage.

    .PARAMETER LoggingLevel
        The logging level for this method. For valid values, see the loggingLevel property of the Stage resource in the Amazon API Gateway API Reference.
    
    .PARAMETER MethodSettings
        Configures settings for all of the stage's methods.
    
    .PARAMETER MetricsEnabled
        Indicates whether Amazon CloudWatch metrics are enabled for methods in the stage.

    .PARAMETER StageName
        The name of the stage, which API Gateway uses as the first path segment in the invoke Uniform Resource Identifier (URI).

    .PARAMETER ThrottlingBurstLimit
        The number of burst requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account. For more information, see Manage API Request Throttling in the API Gateway Developer Guide.

    .PARAMETER ThrottlingRateLimit
        The number of steady-state requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account. For more information, see Manage API Request Throttling in the API Gateway Developer Guide.
    
    .PARAMETER Variables
        A map that defines the stage variables. Variable names must consist of alphanumeric characters, and the values must match the following regular expression: [A-Za-z0-9-._~:/?#&amp;=,]+.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment.StageDescription')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $CacheClusterEnabled,
        [parameter(Mandatory = $false)]
        [System.String]
        $CacheClusterSize,
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $CacheDataEncrypted,
        [parameter(Mandatory = $false)]
        [Int]
        $CacheTtlInSeconds,
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $CachingEnabled,
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
        $ClientCertificateId,
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $DataTraceEnabled,
        [parameter(Mandatory = $false)]
        [System.String]
        $Description,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.StageDescription'
    }
}