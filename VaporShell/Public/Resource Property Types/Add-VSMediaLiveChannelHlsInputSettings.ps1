function Add-VSMediaLiveChannelHlsInputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.HlsInputSettings resource property to the template

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.HlsInputSettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html

    .PARAMETER BufferSegments
        When specified, reading of the HLS input begins this many buffer segments from the end most recently written segment. When not specified, the HLS input begins with the first segment specified in the m3u8.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-buffersegments
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Retries
        The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retries
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Bandwidth
        When specified, the HLS stream with the m3u8 BANDWIDTH that most closely matches this value is chosen. Otherwise, the highest bandwidth stream in the m3u8 is chosen. The bitrate is specified in bits per second, as in an HLS manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-bandwidth
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER RetryInterval
        The number of seconds between retries when an attempt to read a manifest or segment fails.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retryinterval
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.HlsInputSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $BufferSegments,
        [parameter(Mandatory = $false)]
        [Int]
        $Retries,
        [parameter(Mandatory = $false)]
        [Int]
        $Bandwidth,
        [parameter(Mandatory = $false)]
        [Int]
        $RetryInterval
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.HlsInputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
