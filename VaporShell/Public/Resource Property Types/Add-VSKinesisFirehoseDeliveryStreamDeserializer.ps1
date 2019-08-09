function Add-VSKinesisFirehoseDeliveryStreamDeserializer {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.Deserializer resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.Deserializer resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html

    .PARAMETER HiveJsonSerDe
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde    
		Required: False    
		Type: HiveJsonSerDe    
		UpdateType: Mutable    

    .PARAMETER OpenXJsonSerDe
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde    
		Required: False    
		Type: OpenXJsonSerDe    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.Deserializer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HiveJsonSerDe,
        [parameter(Mandatory = $false)]
        $OpenXJsonSerDe
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.Deserializer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
