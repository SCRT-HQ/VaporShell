function Add-VSKinesisFirehoseDeliveryStreamSerializer {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.Serializer resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.Serializer resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html

    .PARAMETER OrcSerDe
        A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see Apache ORC: https://orc.apache.org/docs/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-orcserde
        Type: OrcSerDe
        UpdateType: Mutable

    .PARAMETER ParquetSerDe
        A serializer to use for converting data to the Parquet format before storing it in Amazon S3. For more information, see Apache Parquet: https://parquet.apache.org/documentation/latest/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-parquetserde
        Type: ParquetSerDe
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.Serializer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OrcSerDe,
        [parameter(Mandatory = $false)]
        $ParquetSerDe
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.Serializer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
