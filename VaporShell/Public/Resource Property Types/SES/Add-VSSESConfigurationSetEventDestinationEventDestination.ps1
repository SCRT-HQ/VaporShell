function Add-VSSESConfigurationSetEventDestinationEventDestination {
    <#
    .SYNOPSIS
        Adds an AWS::SES::ConfigurationSetEventDestination.EventDestination resource property to the template. Contains information about the event destination that email sending events are published to. Event destinations are associated with configuration sets. When you specify an event destination, you provide one, and only one, destination. You can send event data to Amazon CloudWatch or Amazon Kinesis Data Firehose. For more information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

    .DESCRIPTION
        Adds an AWS::SES::ConfigurationSetEventDestination.EventDestination resource property to the template.
Contains information about the event destination that email sending events are published to. Event destinations are associated with configuration sets. When you specify an event destination, you provide one, and only one, destination. You can send event data to Amazon CloudWatch or Amazon Kinesis Data Firehose. For more information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

**Note**

You can't specify Amazon SNS event destinations in CloudFormation templates.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html

    .PARAMETER CloudWatchDestination
        An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.

        Type: CloudWatchDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-cloudwatchdestination
        UpdateType: Mutable

    .PARAMETER Enabled
        Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to true to enable publishing to this destination; set to false to prevent publishing to this destination. The default value is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-enabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER MatchingEventTypes
        The type of email sending events to publish to the event destination.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-matchingeventtypes
        UpdateType: Mutable

    .PARAMETER Name
        The name of the event destination. The name must:
+ This value can only contain ASCII letters a–z, A–Z, numbers 0–9, underscores _, or dashes -.
+ Contain fewer than 64 characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseDestination
        An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Data Firehose event destination.

        Type: KinesisFirehoseDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-kinesisfirehosedestination
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SES.ConfigurationSetEventDestination.EventDestination')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudWatchDestination,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled,
        [parameter(Mandatory = $true)]
        $MatchingEventTypes,
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
        $Name,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseDestination
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.ConfigurationSetEventDestination.EventDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
