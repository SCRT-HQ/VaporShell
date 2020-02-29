function Add-VSPinpointSegmentSourceSegments {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template. The base segment to build the segment on. A base segment, also called a *source segment*, defines the initial population of endpoints for a segment. When you add dimensions to the segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template.
The base segment to build the segment on. A base segment, also called a *source segment*, defines the initial population of endpoints for a segment. When you add dimensions to the segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.

You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the segment size estimate that displays on the Amazon Pinpoint console indicates the size of the imported segment without any filters applied to it.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html

    .PARAMETER Version
        The version number of the source segment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Id
        The unique ID of the source segment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-id
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Segment.SourceSegments')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Version,
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
        $Id
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Segment.SourceSegments'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
