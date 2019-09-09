function Add-VSAlexaASKSkillAuthenticationConfiguration {
    <#
    .SYNOPSIS
        Adds an Alexa::ASK::Skill.AuthenticationConfiguration resource property to the template. The AuthenticationConfiguration property type specifies the Login with Amazon (LWA configuration used to authenticate with the Alexa service. Only Login with Amazon security profiles created through the Amazon Developer Console: https://developer.amazon.com/lwa/sp/overview.html are supported for authentication. A client ID, client secret, and refresh token are required. You can generate a client ID and client secret by creating a new security profile: https://developer.amazon.com/lwa/sp/create-security-profile.html on the Amazon Developer Portal or you can retrieve them from an existing profile. You can then produce the refresh token by providing the client ID and client secret to the generate-lwa-tokens: https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#generate-lwa-tokens command in the ASK CLI: https://developer.amazon.com/docs/smapi/ask-cli-intro.html.

    .DESCRIPTION
        Adds an Alexa::ASK::Skill.AuthenticationConfiguration resource property to the template.
The AuthenticationConfiguration property type specifies the Login with Amazon (LWA configuration used to authenticate with the Alexa service. Only Login with Amazon security profiles created through the Amazon Developer Console: https://developer.amazon.com/lwa/sp/overview.html are supported for authentication. A client ID, client secret, and refresh token are required. You can generate a client ID and client secret by creating a new security profile: https://developer.amazon.com/lwa/sp/create-security-profile.html on the Amazon Developer Portal or you can retrieve them from an existing profile. You can then produce the refresh token by providing the client ID and client secret to the generate-lwa-tokens: https://developer.amazon.com/docs/smapi/ask-cli-command-reference.html#generate-lwa-tokens command in the ASK CLI: https://developer.amazon.com/docs/smapi/ask-cli-intro.html.

AuthenticationConfiguration is a property of the Alexa::ASK::Skill resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html

    .PARAMETER RefreshToken
        Refresh token from Login with Amazon LWA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-refreshtoken
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ClientSecret
        Client secret from Login with Amazon LWA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientsecret
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ClientId
        Client ID from Login with Amazon LWA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientid
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Alexa.ASK.Skill.AuthenticationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RefreshToken,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ClientSecret,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ClientId
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Alexa.ASK.Skill.AuthenticationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
