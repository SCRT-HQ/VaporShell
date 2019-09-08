function Add-VSMediaLiveChannelCaptionSelectorSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html

    .PARAMETER DvbSubSourceSettings
        Information about the DVB Sub captions to extract from the input.

        Type: DvbSubSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings
        UpdateType: Mutable

    .PARAMETER Scte27SourceSettings
        Information about the SCTE-27 captions to extract from the input.

        Type: Scte27SourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings
        UpdateType: Mutable

    .PARAMETER AribSourceSettings
        Information about the ARIB captions to extract from the input.

        Type: AribSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings
        UpdateType: Mutable

    .PARAMETER EmbeddedSourceSettings
        Information about the embedded captions to extract from the input.

        Type: EmbeddedSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings
        UpdateType: Mutable

    .PARAMETER Scte20SourceSettings
        Information about the SCTE-20 captions to extract from the input.

        Type: Scte20SourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings
        UpdateType: Mutable

    .PARAMETER TeletextSourceSettings
        Information about the Teletext captions to extract from the input.

        Type: TeletextSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-teletextsourcesettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.CaptionSelectorSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DvbSubSourceSettings,
        [parameter(Mandatory = $false)]
        $Scte27SourceSettings,
        [parameter(Mandatory = $false)]
        $AribSourceSettings,
        [parameter(Mandatory = $false)]
        $EmbeddedSourceSettings,
        [parameter(Mandatory = $false)]
        $Scte20SourceSettings,
        [parameter(Mandatory = $false)]
        $TeletextSourceSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.CaptionSelectorSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
