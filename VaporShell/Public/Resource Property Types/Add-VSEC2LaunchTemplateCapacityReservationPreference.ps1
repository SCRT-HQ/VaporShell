function Add-VSEC2LaunchTemplateCapacityReservationPreference {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LaunchTemplate.CapacityReservationPreference resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::LaunchTemplate.CapacityReservationPreference resource property to the template

    .LINK
        

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.LaunchTemplate.CapacityReservationPreference')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LaunchTemplate.CapacityReservationPreference'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
