function Add-VSIoTEventsDetectorModelAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template. An action to be performed when the condition is TRUE.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template.
An action to be performed when the condition is TRUE.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html

    .PARAMETER IotEvents
        Sends an IoT Events input, passing in information about the detector model instance and the event which triggered the action.

        Type: IotEvents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents
        UpdateType: Mutable

    .PARAMETER Firehose
        Sends information about the detector model instance and the event which triggered the action to a Kinesis Data Firehose delivery stream.

        Type: Firehose
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose
        UpdateType: Mutable

    .PARAMETER IotTopicPublish
        Publishes an MQTT message with the given topic to the AWS IoT message broker.

        Type: IotTopicPublish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish
        UpdateType: Mutable

    .PARAMETER DynamoDB
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: DynamoDB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodb
        UpdateType: Mutable

    .PARAMETER DynamoDBv2
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: DynamoDBv2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodbv2
        UpdateType: Mutable

    .PARAMETER IotSiteWise
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: IotSiteWise
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotsitewise
        UpdateType: Mutable

    .PARAMETER ResetTimer
        Information needed to reset the timer.

        Type: ResetTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer
        UpdateType: Mutable

    .PARAMETER Sqs
        Sends information about the detector model instance and the event which triggered the action to an Amazon SQS queue.

        Type: Sqs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs
        UpdateType: Mutable

    .PARAMETER Sns
        Sends an Amazon SNS message.

        Type: Sns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns
        UpdateType: Mutable

    .PARAMETER SetTimer
        Information needed to set the timer.

        Type: SetTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer
        UpdateType: Mutable

    .PARAMETER ClearTimer
        Information needed to clear the timer.

        Type: ClearTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer
        UpdateType: Mutable

    .PARAMETER Lambda
        Calls an AWS Lambda function, passing in information about the detector model instance and the event which triggered the action.

        Type: Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda
        UpdateType: Mutable

    .PARAMETER SetVariable
        Sets a variable to a specified value.

        Type: SetVariable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $IotEvents,
        [parameter(Mandatory = $false)]
        $Firehose,
        [parameter(Mandatory = $false)]
        $IotTopicPublish,
        [parameter(Mandatory = $false)]
        $DynamoDB,
        [parameter(Mandatory = $false)]
        $DynamoDBv2,
        [parameter(Mandatory = $false)]
        $IotSiteWise,
        [parameter(Mandatory = $false)]
        $ResetTimer,
        [parameter(Mandatory = $false)]
        $Sqs,
        [parameter(Mandatory = $false)]
        $Sns,
        [parameter(Mandatory = $false)]
        $SetTimer,
        [parameter(Mandatory = $false)]
        $ClearTimer,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $SetVariable
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
