function Add-VSKinesisFirehoseDeliveryStreamElasticsearchRetryOptions {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template. The ElasticsearchRetryOptions property type configures the retry behavior for when Amazon Kinesis Data Firehose (Kinesis Data Firehose can't deliver data to Amazon Elasticsearch Service (Amazon ES.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template.
The ElasticsearchRetryOptions property type configures the retry behavior for when Amazon Kinesis Data Firehose (Kinesis Data Firehose can't deliver data to Amazon Elasticsearch Service (Amazon ES.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html

    .PARAMETER DurationInSeconds
        After an initial failure to deliver to Amazon ES, the total amount of time during which Kinesis Data Firehose re-attempts delivery including the first attempt. If Kinesis Data Firehose can't deliver the data within the specified time, it writes the data to the backup S3 bucket. For valid values, see the DurationInSeconds content for the ElasticsearchRetryOptions: https://docs.aws.amazon.com/firehose/latest/APIReference/API_ElasticsearchRetryOptions.html data type in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $DurationInSeconds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
