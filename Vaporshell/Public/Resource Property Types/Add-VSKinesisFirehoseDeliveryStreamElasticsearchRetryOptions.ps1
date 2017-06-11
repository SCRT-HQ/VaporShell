function Add-VSKinesisFirehoseDeliveryStreamElasticsearchRetryOptions {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions.html

    .PARAMETER DurationInSeconds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions-durationinseconds
		PrimitiveType: Integer
		Required: True
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
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True") {
                $val = "true"
            }
            elseif ($val -eq "False") {
                $val = "false"
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptions'
    }
}
