function Add-VSIoTTopicRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.Action resource property to the template

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.Action resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html

    .PARAMETER CloudwatchAlarm
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-cloudwatchalarm    
		Required: False    
		Type: CloudwatchAlarmAction    
		UpdateType: Mutable    

    .PARAMETER CloudwatchMetric
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-cloudwatchmetric    
		Required: False    
		Type: CloudwatchMetricAction    
		UpdateType: Mutable    

    .PARAMETER DynamoDB
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-dynamodb    
		Required: False    
		Type: DynamoDBAction    
		UpdateType: Mutable    

    .PARAMETER Elasticsearch
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-elasticsearch    
		Required: False    
		Type: ElasticsearchAction    
		UpdateType: Mutable    

    .PARAMETER Firehose
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-firehose    
		Required: False    
		Type: FirehoseAction    
		UpdateType: Mutable    

    .PARAMETER Kinesis
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-kinesis    
		Required: False    
		Type: KinesisAction    
		UpdateType: Mutable    

    .PARAMETER Lambda
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-lambda    
		Required: False    
		Type: LambdaAction    
		UpdateType: Mutable    

    .PARAMETER Republish
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-republish    
		Required: False    
		Type: RepublishAction    
		UpdateType: Mutable    

    .PARAMETER S3
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-s3    
		Required: False    
		Type: S3Action    
		UpdateType: Mutable    

    .PARAMETER Sns
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-sns    
		Required: False    
		Type: SnsAction    
		UpdateType: Mutable    

    .PARAMETER Sqs
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-sqs    
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
        foreach ($psParamKey in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $psParamKey).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $psParamKey -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.Action'
    }
}
