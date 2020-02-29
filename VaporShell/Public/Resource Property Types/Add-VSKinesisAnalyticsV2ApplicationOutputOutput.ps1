function Add-VSKinesisAnalyticsV2ApplicationOutputOutput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.Output resource property to the template. Describes an SQL-based Amazon Kinesis Data Analytics application's output configuration, in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be a Kinesis data stream or a Kinesis Data Firehose delivery stream.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::ApplicationOutput.Output resource property to the template.
Describes an SQL-based Amazon Kinesis Data Analytics application's output configuration, in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be a Kinesis data stream or a Kinesis Data Firehose delivery stream.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html

    .PARAMETER DestinationSchema
        Describes the data format when records are written to the destination.

        Type: DestinationSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-destinationschema
        UpdateType: Mutable

    .PARAMETER LambdaOutput
        Identifies an AWS Lambda function as the destination.

        Type: LambdaOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-lambdaoutput
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseOutput
        Identifies an Amazon Kinesis Data Firehose delivery stream as the destination.

        Type: KinesisFirehoseOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisfirehoseoutput
        UpdateType: Mutable

    .PARAMETER KinesisStreamsOutput
        Identifies an Amazon Kinesis data stream as the destination.

        Type: KinesisStreamsOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisstreamsoutput
        UpdateType: Mutable

    .PARAMETER Name
        The name of the in-application stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-name
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.Output')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $DestinationSchema,
        [parameter(Mandatory = $false)]
        $LambdaOutput,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseOutput,
        [parameter(Mandatory = $false)]
        $KinesisStreamsOutput,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.ApplicationOutput.Output'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
