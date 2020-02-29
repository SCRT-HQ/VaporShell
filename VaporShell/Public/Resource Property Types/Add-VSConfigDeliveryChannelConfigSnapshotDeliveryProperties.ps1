function Add-VSConfigDeliveryChannelConfigSnapshotDeliveryProperties {
    <#
    .SYNOPSIS
        Adds an AWS::Config::DeliveryChannel.ConfigSnapshotDeliveryProperties resource property to the template. Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.

    .DESCRIPTION
        Adds an AWS::Config::DeliveryChannel.ConfigSnapshotDeliveryProperties resource property to the template.
Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.

**Note**

If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:

The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:

+ The value for the deliveryFrequency parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for AWS Config rules.

+ The value for the MaximumExecutionFrequency parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see ConfigRule: https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigRule.html.

If the deliveryFrequency value is less frequent than the MaximumExecutionFrequency value for a rule, AWS Config invokes the rule only as often as the deliveryFrequency value.

1. For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.

1. You specify the MaximumExecutionFrequency value for Six_Hours.

1. You then specify the delivery channel deliveryFrequency value for TwentyFour_Hours.

1. Because the value for deliveryFrequency is less frequent than MaximumExecutionFrequency, AWS Config invokes evaluations for the rule every 24 hours.

You should set the MaximumExecutionFrequency value to be at least as frequent as the deliveryFrequency value. You can view the deliveryFrequency value by using the DescribeDeliveryChannnels action.

To update the deliveryFrequency with which AWS Config delivers your configuration snapshots, use the PutDeliveryChannel action.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html

    .PARAMETER DeliveryFrequency
        The frequency with which AWS Config delivers configuration snapshots.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties-deliveryfrequency
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Config.DeliveryChannel.ConfigSnapshotDeliveryProperties')]
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
        $DeliveryFrequency
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.DeliveryChannel.ConfigSnapshotDeliveryProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
