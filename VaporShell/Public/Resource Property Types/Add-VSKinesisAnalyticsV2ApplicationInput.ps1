function Add-VSKinesisAnalyticsV2ApplicationInput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.Input resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.Input resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html

    .PARAMETER NamePrefix
        The name prefix to use when creating an in-application stream. Suppose that you specify a prefix "MyInApplicationStream." Kinesis Data Analytics then creates one or more as per the InputParallelism count you specified in-application streams with the names "MyInApplicationStream_001," "MyInApplicationStream_002," and so on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-nameprefix
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER InputSchema
        Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
Also used to describe the format of the reference data source.

        Type: InputSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputschema
        UpdateType: Mutable

    .PARAMETER KinesisStreamsInput
        If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name ARN.

        Type: KinesisStreamsInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisstreamsinput
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseInput
        If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.

        Type: KinesisFirehoseInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisfirehoseinput
        UpdateType: Mutable

    .PARAMETER InputProcessingConfiguration
        The InputProcessingConfiguration: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_InputProcessingConfiguration.html for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is InputLambdaProcessor: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_InputLambdaProcessor.html.

        Type: InputProcessingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputprocessingconfiguration
        UpdateType: Mutable

    .PARAMETER InputParallelism
        Describes the number of in-application streams to create.

        Type: InputParallelism
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputparallelism
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.Input')]
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
        $NamePrefix,
        [parameter(Mandatory = $true)]
        $InputSchema,
        [parameter(Mandatory = $false)]
        $KinesisStreamsInput,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseInput,
        [parameter(Mandatory = $false)]
        $InputProcessingConfiguration,
        [parameter(Mandatory = $false)]
        $InputParallelism
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.Input'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
