function Add-VSKinesisFirehoseDeliveryStreamOrcSerDe {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.OrcSerDe resource property to the template. A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see Apache ORC: https://orc.apache.org/docs/.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.OrcSerDe resource property to the template.
A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see Apache ORC: https://orc.apache.org/docs/.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html

    .PARAMETER BlockSizeBytes
        The Hadoop Distributed File System HDFS block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-blocksizebytes
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER BloomFilterColumns
        The column names for which you want Kinesis Data Firehose to create bloom filters. The default is null.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfiltercolumns
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER BloomFilterFalsePositiveProbability
        The Bloom filter false positive probability FPP. The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfilterfalsepositiveprobability
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER Compression
        The compression code to use over data blocks. The default is SNAPPY.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-compression
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DictionaryKeyThreshold
        Represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-dictionarykeythreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER EnablePadding
        Set this to true to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-enablepadding
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER FormatVersion
        The version of the file to write. The possible values are V0_11 and V0_12. The default is V0_12.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-formatversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PaddingTolerance
        A number between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size.
For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task.
Kinesis Data Firehose ignores this parameter when EnablePadding is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-paddingtolerance
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER RowIndexStride
        The number of rows between index entries. The default is 10,000 and the minimum is 1,000.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-rowindexstride
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER StripeSizeBytes
        The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-stripesizebytes
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.OrcSerDe')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $BlockSizeBytes,
        [parameter(Mandatory = $false)]
        $BloomFilterColumns,
        [parameter(Mandatory = $false)]
        [System.Double]
        $BloomFilterFalsePositiveProbability,
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
        $Compression,
        [parameter(Mandatory = $false)]
        [System.Double]
        $DictionaryKeyThreshold,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $EnablePadding,
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
        $FormatVersion,
        [parameter(Mandatory = $false)]
        [System.Double]
        $PaddingTolerance,
        [parameter(Mandatory = $false)]
        [Int]
        $RowIndexStride,
        [parameter(Mandatory = $false)]
        [Int]
        $StripeSizeBytes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.OrcSerDe'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
