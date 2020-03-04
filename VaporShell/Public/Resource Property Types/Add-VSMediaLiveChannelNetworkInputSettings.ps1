function Add-VSMediaLiveChannelNetworkInputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.NetworkInputSettings resource property to the template. Information about how to connect to the upstream system.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.NetworkInputSettings resource property to the template.
Information about how to connect to the upstream system.

The parent of this entity is InputSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html

    .PARAMETER ServerValidation
        Checks HTTPS server certificates. When set to checkCryptographyOnly, cryptography in the certificate is checked, but not the server's name. Certain subdomains notably S3 buckets that use dots in the bucket name don't strictly match the corresponding certificate's wildcard pattern and would otherwise cause the channel to error. This setting is ignored for protocols that do not use HTTPS.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-servervalidation
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER HlsInputSettings
        Information about how to connect to the upstream system.

        Type: HlsInputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-hlsinputsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.NetworkInputSettings')]
    [cmdletbinding()]
    Param
    (
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
        $ServerValidation,
        [parameter(Mandatory = $false)]
        $HlsInputSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.NetworkInputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
