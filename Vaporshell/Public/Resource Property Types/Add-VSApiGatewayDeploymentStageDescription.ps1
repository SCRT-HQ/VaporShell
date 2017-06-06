function Add-VSApiGatewayDeploymentStageDescription {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Deployment.StageDescription resource property to the template

    .DESCRIPTION
        Adds an AWS::ApiGateway::Deployment.StageDescription resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html

    .PARAMETER CacheClusterEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclusterenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER CacheClusterSize
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclustersize
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER CacheDataEncrypted
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachedataencrypted
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER CacheTtlInSeconds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachettlinseconds
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER CachingEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachingenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER ClientCertificateId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-clientcertificateid
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER DataTraceEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-datatraceenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER Description
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-description
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER LoggingLevel
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-logginglevel
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER MethodSettings
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-methodsettings
		DuplicatesAllowed: False
		ItemType: MethodSetting
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER MetricsEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-metricsenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER StageName
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-stagename
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER ThrottlingBurstLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingburstlimit
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER ThrottlingRateLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingratelimit
		PrimitiveType: Double
		Required: False
		UpdateType: Mutable

    .PARAMETER Variables
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-variables
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: Map
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment.StageDescription')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $CacheClusterEnabled,
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
        $CacheClusterSize,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $CacheDataEncrypted,
        [parameter(Mandatory = $false)]
        [Int]
        $CacheTtlInSeconds,
        [parameter(Mandatory = $false)]
        [System.Boolean]
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
        [System.Boolean]
        $DataTraceEnabled,
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
        $Description,
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
        $LoggingLevel,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApiGateway.Deployment.MethodSetting"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $MethodSettings,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $MetricsEnabled,
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
        $StageName,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingBurstLimit,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingRateLimit,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Variables
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.StageDescription'
    }
}
