function Add-VSEC2LaunchTemplateCapacityReservationSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LaunchTemplate.CapacityReservationSpecification resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::LaunchTemplate.CapacityReservationSpecification resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html

    .PARAMETER CapacityReservationPreference
        Indicates the instance's Capacity Reservation preferences. Possible preferences include:
+  open - The instance can run in any open Capacity Reservation that has matching attributes instance type, platform, Availability Zone.
+  none - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.

        Type: CapacityReservationPreference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationpreference
        UpdateType: Mutable

    .PARAMETER CapacityReservationTarget
        Information about the target Capacity Reservation.

        Type: CapacityReservationTarget
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationtarget
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.LaunchTemplate.CapacityReservationSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CapacityReservationPreference,
        [parameter(Mandatory = $false)]
        $CapacityReservationTarget
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LaunchTemplate.CapacityReservationSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
