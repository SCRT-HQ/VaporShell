function Add-VSMediaLiveChannelCaptionSelectorSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html

    .PARAMETER DvbSubSourceSettings
		Type: DvbSubSourceSettings    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings    
		UpdateType: Mutable    

    .PARAMETER Scte27SourceSettings
		Type: Scte27SourceSettings    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings    
		UpdateType: Mutable    

    .PARAMETER AribSourceSettings
		Type: AribSourceSettings    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings    
		UpdateType: Mutable    

    .PARAMETER EmbeddedSourceSettings
		Type: EmbeddedSourceSettings    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings    
		UpdateType: Mutable    

    .PARAMETER Scte20SourceSettings
		Type: Scte20SourceSettings    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings    
		UpdateType: Mutable    

    .PARAMETER TeletextSourceSettings
		Type: TeletextSourceSettings    
		Required: False    
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
