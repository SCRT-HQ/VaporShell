function Add-ApiGatewayDeploymentStageDescriptionMethodSetting {
    <#
    .SYNOPSIS
        MethodSetting is a property of the Amazon API Gateway Deployment StageDescription property that configures settings for all methods in an Amazon API Gateway (API Gateway) stage.
    
    .DESCRIPTION
        MethodSetting is a property of the Amazon API Gateway Deployment StageDescription property that configures settings for all methods in an Amazon API Gateway (API Gateway) stage.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html
    
    .PARAMETER CacheDataEncrypted
        Indicates whether the cached responses are encrypted.
    
    .PARAMETER CacheTtlInSeconds
        The time-to-live (TTL) period, in seconds, that specifies how long API Gateway caches responses.
    
    .PARAMETER CachingEnabled
        Indicates whether responses are cached and returned for requests. You must enable a cache cluster on the stage to cache responses. For more information, see Enable API Gateway Caching in a Stage to Enhance API Performance in the API Gateway Developer Guide.
    
    .PARAMETER DataTraceEnabled
        Indicates whether data trace logging is enabled for methods in the stage. API Gateway pushes these logs to Amazon CloudWatch Logs.
    
    .PARAMETER HttpMethod
        The HTTP method.
    
    .PARAMETER LoggingLevel
        The logging level for this method. For valid values, see the loggingLevel property of the Stage resource in the Amazon API Gateway API Reference.

    .PARAMETER MetricsEnabled
        Indicates whether Amazon CloudWatch metrics are enabled for methods in the stage.

    .PARAMETER ResourcePath
        The resource path for this method. Forward slashes (/) are encoded as ~1 and the initial slash must include a forward slash. For example, the path value `/resource/subresource` must be encoded as `/~1resource~1subresource`. To specify the root path, use only a slash (/).

    .PARAMETER ThrottlingBurstLimit
        The number of burst requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account. For more information, see Manage API Request Throttling in the API Gateway Developer Guide.
    
    .PARAMETER ThrottlingRateLimit
        The number of steady-state requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account. For more information, see Manage API Request Throttling in the API Gateway Developer Guide.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment.StageDescription.MethodSetting')]
    [cmdletbinding()]
    Param
    (
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
        [ValidateSet($true,$false)]
        [System.String]
        $DataTraceEnabled,
        [parameter(Mandatory = $false)]
        [System.String]
        $HttpMethod,
        [parameter(Mandatory = $false)]
        [ValidateSet("OFF","ERROR","INFO")]
        [System.String]
        $LoggingLevel,
        [parameter(Mandatory = $false)]
        [ValidateSet($true,$false)]
        [System.String]
        $MetricsEnabled,
        [parameter(Mandatory = $false)]
        [System.String]
        $ResourcePath,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingBurstLimit,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingRateLimit
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            if ($key -like "*Enabled" -or $key -Like "*Encrypted") {
                $obj | Add-Member -MemberType NoteProperty -Name $key -Value $(((Get-Variable $key).Value).ToLower())
            }
            else {
                $obj | Add-Member -MemberType NoteProperty -Name $key -Value $((Get-Variable $key).Value)
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.StageDescription.MethodSetting'
    }
}