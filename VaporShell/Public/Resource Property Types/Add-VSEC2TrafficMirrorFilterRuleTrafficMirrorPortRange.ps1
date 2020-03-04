function Add-VSEC2TrafficMirrorFilterRuleTrafficMirrorPortRange {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange resource property to the template. Describes the Traffic Mirror port range.

    .DESCRIPTION
        Adds an AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange resource property to the template.
Describes the Traffic Mirror port range.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html

    .PARAMETER FromPort
        The start of the Traffic Mirror port range. This applies to the TCP and UDP protocols.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-fromport
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ToPort
        The end of the Traffic Mirror port range. This applies to the TCP and UDP protocols.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-toport
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.TrafficMirrorFilterRule.TrafficMirrorPortRange')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FromPort,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ToPort
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.TrafficMirrorFilterRule.TrafficMirrorPortRange'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
