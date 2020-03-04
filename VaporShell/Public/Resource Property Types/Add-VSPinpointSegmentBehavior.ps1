function Add-VSPinpointSegmentBehavior {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Segment.Behavior resource property to the template. Specifies behavior-based criteria, such as how recently users have used your app, for a segment.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Segment.Behavior resource property to the template.
Specifies behavior-based criteria, such as how recently users have used your app, for a segment.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html

    .PARAMETER Recency
        The dimension settings that are based on how recently an endpoint was active.

        Type: Recency
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Segment.Behavior')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Recency
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Segment.Behavior'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
