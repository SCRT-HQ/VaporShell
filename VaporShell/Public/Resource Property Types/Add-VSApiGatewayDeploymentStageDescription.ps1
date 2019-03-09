function Add-VSApiGatewayDeploymentStageDescription {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Deployment.StageDescription resource property to the template

    .DESCRIPTION
        Adds an AWS::ApiGateway::Deployment.StageDescription resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html

    .PARAMETER AccessLogSetting
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-accesslogsetting    
		Required: False    
		Type: AccessLogSetting    
		UpdateType: Mutable    

    .PARAMETER CacheClusterEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclusterenabled    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CacheClusterSize
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclustersize    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CacheDataEncrypted
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachedataencrypted    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CacheTtlInSeconds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachettlinseconds    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CachingEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachingenabled    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER CanarySetting
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-canarysetting    
		Required: False    
		Type: CanarySetting    
		UpdateType: Mutable    

    .PARAMETER ClientCertificateId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-clientcertificateid    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DataTraceEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-datatraceenabled    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Description
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-description    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER DocumentationVersion
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-documentationversion    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER LoggingLevel
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-logginglevel    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER MethodSettings
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-methodsettings    
		DuplicatesAllowed: False    
		ItemType: MethodSetting    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER MetricsEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-metricsenabled    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Tags
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-tags    
		DuplicatesAllowed: True    
		ItemType: Tag    
		Required: False    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER ThrottlingBurstLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingburstlimit    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER ThrottlingRateLimit
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingratelimit    
		PrimitiveType: Double    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER TracingEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-tracingenabled    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER Variables
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-variables    
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
        $AccessLogSetting,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $CacheClusterEnabled,
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
        $CanarySetting,
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
        $ClientCertificateId,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DataTraceEnabled,
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
        $Description,
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
        $DocumentationVersion,
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
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApiGateway.Deployment.MethodSetting"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MethodSettings,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $MetricsEnabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Tag","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags,
        [parameter(Mandatory = $false)]
        [Int]
        $ThrottlingBurstLimit,
        [parameter(Mandatory = $false)]
        [System.Double]
        $ThrottlingRateLimit,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $TracingEnabled,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Variables
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.StageDescription'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
