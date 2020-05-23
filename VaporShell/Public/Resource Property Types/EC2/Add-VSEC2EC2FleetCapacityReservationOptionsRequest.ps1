function Add-VSEC2EC2FleetCapacityReservationOptionsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.CapacityReservationOptionsRequest resource property to the template. Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.CapacityReservationOptionsRequest resource property to the template.
Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.

**Note**

This strategy can only be used if the EC2 Fleet is of type instant.

For more information about Capacity Reservations, see On-Demand Capacity Reservations: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html in the *Amazon Elastic Compute Cloud User Guide*. For examples of using Capacity Reservations in an EC2 Fleet, see EC2 Fleet Example Configurations: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html in the *Amazon Elastic Compute Cloud User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html

    .PARAMETER UsageStrategy
        Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.
If you specify use-capacity-reservations-first, the fleet uses unused Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If multiple instance pools have unused Capacity Reservations, the On-Demand allocation strategy lowest-price or prioritized is applied. If the number of unused Capacity Reservations is less than the On-Demand target capacity, the remaining On-Demand target capacity is launched according to the On-Demand allocation strategy lowest-price or prioritized.
If you do not specify a value, the fleet fulfils the On-Demand capacity according to the chosen On-Demand allocation strategy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html#cfn-ec2-ec2fleet-capacityreservationoptionsrequest-usagestrategy
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.CapacityReservationOptionsRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UsageStrategy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.CapacityReservationOptionsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
