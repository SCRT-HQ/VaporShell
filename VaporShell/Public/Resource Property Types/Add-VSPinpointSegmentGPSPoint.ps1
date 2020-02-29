function Add-VSPinpointSegmentGPSPoint {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Segment.GPSPoint resource property to the template. The GPS coordinates of the endpoint location.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Segment.GPSPoint resource property to the template.
The GPS coordinates of the endpoint location.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html

    .PARAMETER RangeInKilometers
        The range, in kilometers, from the GPS coordinates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-rangeinkilometers
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER Coordinates
        The GPS coordinates to measure distance from.

        Type: Coordinates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Segment.GPSPoint')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RangeInKilometers,
        [parameter(Mandatory = $true)]
        $Coordinates
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Segment.GPSPoint'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
