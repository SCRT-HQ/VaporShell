function Add-VSKinesisAnalyticsApplicationOutputOutput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template. Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template.
Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.

For limits on how many destinations an application can write and other limitations, see Limits: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html

    .PARAMETER DestinationSchema
        Describes the data format when records are written to the destination. For more information, see Configuring Application Output: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html.

        Type: DestinationSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-destinationschema
        UpdateType: Mutable

    .PARAMETER LambdaOutput
        Identifies an AWS Lambda function as the destination.

        Type: LambdaOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-lambdaoutput
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseOutput
        Identifies an Amazon Kinesis Firehose delivery stream as the destination.

        Type: KinesisFirehoseOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisfirehoseoutput
        UpdateType: Mutable

    .PARAMETER KinesisStreamsOutput
        Identifies an Amazon Kinesis stream as the destination.

        Type: KinesisStreamsOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisstreamsoutput
        UpdateType: Mutable

    .PARAMETER Name
        Name of the in-application stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-name
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.Output')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.Output'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
