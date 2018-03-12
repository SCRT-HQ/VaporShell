function Add-VSIoTTopicRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.Action resource property to the template

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.Action resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html

    .PARAMETER CloudwatchAlarm
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchalarm    
		Required: False    
		Type: CloudwatchAlarmAction    
		UpdateType: Mutable    

    .PARAMETER CloudwatchMetric
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchmetric    
		Required: False    
		Type: CloudwatchMetricAction    
		UpdateType: Mutable    

    .PARAMETER DynamoDB
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodb    
		Required: False    
		Type: DynamoDBAction    
		UpdateType: Mutable    

    .PARAMETER DynamoDBv2
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodbv2    
		Required: False    
		Type: DynamoDBv2Action    
		UpdateType: Mutable    

    .PARAMETER Elasticsearch
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-elasticsearch    
		Required: False    
		Type: ElasticsearchAction    
		UpdateType: Mutable    

    .PARAMETER Firehose
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-firehose    
		Required: False    
		Type: FirehoseAction    
		UpdateType: Mutable    

    .PARAMETER Kinesis
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kinesis    
		Required: False    
		Type: KinesisAction    
		UpdateType: Mutable    

    .PARAMETER Lambda
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-lambda    
		Required: False    
		Type: LambdaAction    
		UpdateType: Mutable    

    .PARAMETER Republish
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-republish    
		Required: False    
		Type: RepublishAction    
		UpdateType: Mutable    

    .PARAMETER S3
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-s3    
		Required: False    
		Type: S3Action    
		UpdateType: Mutable    

    .PARAMETER Sns
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sns    
		Required: False    
		Type: SnsAction    
		UpdateType: Mutable    

    .PARAMETER Sqs
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sqs    
		Required: False    
		Type: SqsAction    
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
        $Sqs
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.Action'
    }
}
