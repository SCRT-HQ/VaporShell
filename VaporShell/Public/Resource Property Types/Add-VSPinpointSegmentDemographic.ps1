function Add-VSPinpointSegmentDemographic {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Segment.Demographic resource property to the template

    .DESCRIPTION
        Adds an AWS::Pinpoint::Segment.Demographic resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html

    .PARAMETER AppVersion
        The app version criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-appversion
        UpdateType: Mutable

    .PARAMETER DeviceType
        The device type criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-devicetype
        UpdateType: Mutable

    .PARAMETER Platform
        The device platform criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-platform
        UpdateType: Mutable

    .PARAMETER Channel
        The channel criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-channel
        UpdateType: Mutable

    .PARAMETER Model
        The device model criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-model
        UpdateType: Mutable

    .PARAMETER Make
        The device make criteria for the segment.

        Type: SetDimension
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-make
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Segment.Demographic')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AppVersion,
        [parameter(Mandatory = $false)]
        $DeviceType,
        [parameter(Mandatory = $false)]
        $Platform,
        [parameter(Mandatory = $false)]
        $Channel,
        [parameter(Mandatory = $false)]
        $Model,
        [parameter(Mandatory = $false)]
        $Make
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Segment.Demographic'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
