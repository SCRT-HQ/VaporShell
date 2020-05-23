function Add-VSMediaStoreContainerCorsRule {
    <#
    .SYNOPSIS
        Adds an AWS::MediaStore::Container.CorsRule resource property to the template. A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.

    .DESCRIPTION
        Adds an AWS::MediaStore::Container.CorsRule resource property to the template.
A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html

    .PARAMETER AllowedMethods
        Identifies an HTTP method that the origin that is specified in the rule is allowed to execute.
Each CORS rule must contain at least one AllowedMethods and one AllowedOrigins element.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedmethods
        UpdateType: Immutable

    .PARAMETER AllowedOrigins
        One or more response headers that you want users to be able to access from their applications for example, from a JavaScript XMLHttpRequest object.
Each CORS rule must have at least one AllowedOrigins element. The string value can include only one wildcard character *, for example, http://*.example.com. Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedorigins
        UpdateType: Mutable

    .PARAMETER ExposeHeaders
        One or more headers in the response that you want users to be able to access from their applications for example, from a JavaScript XMLHttpRequest object.
This element is optional for each rule.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-exposeheaders
        UpdateType: Mutable

    .PARAMETER MaxAgeSeconds
        The time in seconds that your browser caches the preflight response for the specified resource.
A CORS rule can have only one MaxAgeSeconds element.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-maxageseconds
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER AllowedHeaders
        Specifies which headers are allowed in a preflight OPTIONS request through the Access-Control-Request-Headers header. Each header name that is specified in Access-Control-Request-Headers must have a corresponding entry in the rule. Only the headers that were requested are sent back.
This element can contain only one wildcard character *.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedheaders
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaStore.Container.CorsRule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AllowedMethods,
        [parameter(Mandatory = $false)]
        $AllowedOrigins,
        [parameter(Mandatory = $false)]
        $ExposeHeaders,
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
        $MaxAgeSeconds,
        [parameter(Mandatory = $false)]
        $AllowedHeaders
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaStore.Container.CorsRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
