function Add-VSKinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.ExtendedS3DestinationConfiguration resource property to the template. The ExtendedS3DestinationConfiguration property type configures an Amazon S3 destination for an Amazon Kinesis Data Firehose delivery stream.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.ExtendedS3DestinationConfiguration resource property to the template.
The ExtendedS3DestinationConfiguration property type configures an Amazon S3 destination for an Amazon Kinesis Data Firehose delivery stream.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html

    .PARAMETER BucketARN
        The Amazon Resource Name ARN of the Amazon S3 bucket. For constraints, see ExtendedS3DestinationConfiguration: https://docs.aws.amazon.com/firehose/latest/APIReference/API_ExtendedS3DestinationConfiguration.html in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bucketarn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER BufferingHints
        The buffering option.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bufferinghints
        Type: BufferingHints
        UpdateType: Mutable

    .PARAMETER CloudWatchLoggingOptions
        The Amazon CloudWatch logging options for your delivery stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-cloudwatchloggingoptions
        Type: CloudWatchLoggingOptions
        UpdateType: Mutable

    .PARAMETER CompressionFormat
        The compression format. If no value is specified, the default is UNCOMPRESSED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-compressionformat
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DataFormatConversionConfiguration
        The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-dataformatconversionconfiguration
        Type: DataFormatConversionConfiguration
        UpdateType: Mutable

    .PARAMETER EncryptionConfiguration
        The encryption configuration for the Kinesis Data Firehose delivery stream. The default value is NoEncryption.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-encryptionconfiguration
        Type: EncryptionConfiguration
        UpdateType: Mutable

    .PARAMETER ErrorOutputPrefix
        A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see Custom Prefixes for Amazon S3 Objects: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-erroroutputprefix
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Prefix
        The YYYY/MM/DD/HH time format prefix is automatically used for delivered Amazon S3 files. For more information, see ExtendedS3DestinationConfiguration: https://docs.aws.amazon.com/firehose/latest/APIReference/API_ExtendedS3DestinationConfiguration.html in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-prefix
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ProcessingConfiguration
        The data processing configuration for the Kinesis Data Firehose delivery stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-processingconfiguration
        Type: ProcessingConfiguration
        UpdateType: Mutable

    .PARAMETER RoleARN
        The Amazon Resource Name ARN of the AWS credentials. For constraints, see ExtendedS3DestinationConfiguration: https://docs.aws.amazon.com/firehose/latest/APIReference/API_ExtendedS3DestinationConfiguration.html in the *Amazon Kinesis Data Firehose API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-rolearn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER S3BackupConfiguration
        The configuration for backup in Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupconfiguration
        Type: S3DestinationConfiguration
        UpdateType: Mutable

    .PARAMETER S3BackupMode
        The Amazon S3 backup mode.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupmode
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.ExtendedS3DestinationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BucketARN,
        [parameter(Mandatory = $true)]
        $BufferingHints,
        [parameter(Mandatory = $false)]
        $CloudWatchLoggingOptions,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CompressionFormat,
        [parameter(Mandatory = $false)]
        $DataFormatConversionConfiguration,
        [parameter(Mandatory = $false)]
        $EncryptionConfiguration,
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
        $ErrorOutputPrefix,
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
        $Prefix,
        [parameter(Mandatory = $false)]
        $ProcessingConfiguration,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RoleARN,
        [parameter(Mandatory = $false)]
        $S3BackupConfiguration,
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
        $S3BackupMode
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.ExtendedS3DestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
