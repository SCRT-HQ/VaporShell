function Add-VSKinesisFirehoseDeliveryStreamElasticsearchBufferingHints {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchBufferingHints resource property to the template. The ElasticsearchBufferingHints property type specifies how Amazon Kinesis Data Firehose (Kinesis Data Firehose buffers incoming data while delivering it to the destination. The first buffer condition that is satisfied triggers Kinesis Data Firehose to deliver the data.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchBufferingHints resource property to the template.
The ElasticsearchBufferingHints property type specifies how Amazon Kinesis Data Firehose (Kinesis Data Firehose buffers incoming data while delivering it to the destination. The first buffer condition that is satisfied triggers Kinesis Data Firehose to deliver the data.

ElasticsearchBufferingHints is the property type for the BufferingHints property of the Amazon Kinesis Data Firehose DeliveryStream ElasticsearchDestinationConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html

    .PARAMETER IntervalInSeconds
        The length of time, in seconds, that Kinesis Data Firehose buffers incoming data before delivering it to the destination. For valid values, see the IntervalInSeconds content for the BufferingHints: https://docs.aws.amazon.com/firehose/latest/APIReference/API_BufferingHints.html data type in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-intervalinseconds
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER SizeInMBs
        The size of the buffer, in MBs, that Kinesis Data Firehose uses for incoming data before delivering it to the destination. For valid values, see the SizeInMBs content for the BufferingHints: https://docs.aws.amazon.com/firehose/latest/APIReference/API_BufferingHints.html data type in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-sizeinmbs
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchBufferingHints')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $IntervalInSeconds,
        [parameter(Mandatory = $true)]
        [Int]
        $SizeInMBs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchBufferingHints'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
