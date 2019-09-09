function Add-VSPinpointApplicationSettingsLimits {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::ApplicationSettings.Limits resource property to the template. The default sending limits for campaigns in the application.

    .DESCRIPTION
        Adds an AWS::Pinpoint::ApplicationSettings.Limits resource property to the template.
The default sending limits for campaigns in the application.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html

    .PARAMETER Daily
        The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period. The maximum value is 100.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-daily
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MaximumDuration
        The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign. The minimum value is 60 seconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-maximumduration
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Total
        The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign. The maximum value is 100.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-total
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MessagesPerSecond
        The maximum number of messages that a campaign can send each second. The minimum value is 50. The maximum value is 20,000.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-messagespersecond
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.ApplicationSettings.Limits')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Daily,
        [parameter(Mandatory = $false)]
        [Int]
        $MaximumDuration,
        [parameter(Mandatory = $false)]
        [Int]
        $Total,
        [parameter(Mandatory = $false)]
        [Int]
        $MessagesPerSecond
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.ApplicationSettings.Limits'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
