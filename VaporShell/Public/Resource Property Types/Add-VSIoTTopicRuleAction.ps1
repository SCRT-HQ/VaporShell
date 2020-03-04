function Add-VSIoTTopicRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.Action resource property to the template. Describes the actions associated with a rule.

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.Action resource property to the template.
Describes the actions associated with a rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html

    .PARAMETER CloudwatchAlarm
        Change the state of a CloudWatch alarm.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchalarm
        Type: CloudwatchAlarmAction
        UpdateType: Mutable

    .PARAMETER CloudwatchMetric
        Capture a CloudWatch metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchmetric
        Type: CloudwatchMetricAction
        UpdateType: Mutable

    .PARAMETER DynamoDB
        Write to a DynamoDB table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodb
        Type: DynamoDBAction
        UpdateType: Mutable

    .PARAMETER DynamoDBv2
        Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodbv2
        Type: DynamoDBv2Action
        UpdateType: Mutable

    .PARAMETER Elasticsearch
        Write data to an Amazon Elasticsearch Service domain.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-elasticsearch
        Type: ElasticsearchAction
        UpdateType: Mutable

    .PARAMETER Firehose
        Write to an Amazon Kinesis Firehose stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-firehose
        Type: FirehoseAction
        UpdateType: Mutable

    .PARAMETER IotAnalytics
        Sends message data to an AWS IoT Analytics channel.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotanalytics
        Type: IotAnalyticsAction
        UpdateType: Mutable

    .PARAMETER Kinesis
        Write data to an Amazon Kinesis stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kinesis
        Type: KinesisAction
        UpdateType: Mutable

    .PARAMETER Lambda
        Invoke a Lambda function.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-lambda
        Type: LambdaAction
        UpdateType: Mutable

    .PARAMETER Republish
        Publish to another MQTT topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-republish
        Type: RepublishAction
        UpdateType: Mutable

    .PARAMETER S3
        Write to an Amazon S3 bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-s3
        Type: S3Action
        UpdateType: Mutable

    .PARAMETER Sns
        Publish to an Amazon SNS topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sns
        Type: SnsAction
        UpdateType: Mutable

    .PARAMETER Sqs
        Publish to an Amazon SQS queue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sqs
        Type: SqsAction
        UpdateType: Mutable

    .PARAMETER StepFunctions
        Starts execution of a Step Functions state machine.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-stepfunctions
        Type: StepFunctionsAction
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.TopicRule.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudwatchAlarm,
        [parameter(Mandatory = $false)]
        $CloudwatchMetric,
        [parameter(Mandatory = $false)]
        $DynamoDB,
        [parameter(Mandatory = $false)]
        $DynamoDBv2,
        [parameter(Mandatory = $false)]
        $Elasticsearch,
        [parameter(Mandatory = $false)]
        $Firehose,
        [parameter(Mandatory = $false)]
        $IotAnalytics,
        [parameter(Mandatory = $false)]
        $Kinesis,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $Republish,
        [parameter(Mandatory = $false)]
        $S3,
        [parameter(Mandatory = $false)]
        $Sns,
        [parameter(Mandatory = $false)]
        $Sqs,
        [parameter(Mandatory = $false)]
        $StepFunctions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
