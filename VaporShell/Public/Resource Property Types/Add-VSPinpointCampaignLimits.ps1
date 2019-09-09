function Add-VSPinpointCampaignLimits {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.Limits resource property to the template. Specifies the limits on the messages that a campaign can send.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.Limits resource property to the template.
Specifies the limits on the messages that a campaign can send.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html

    .PARAMETER Daily
        The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period. The maximum value is 100.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-daily
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MaximumDuration
        The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign. The minimum value is 60 seconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-maximumduration
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Total
        The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign. The maximum value is 100.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-total
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER MessagesPerSecond
        The maximum number of messages that a campaign can send each second. The minimum value is 50. The maximum value is 20,000.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-messagespersecond
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Campaign.Limits')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Campaign.Limits'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
