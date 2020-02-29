function Add-VSKinesisAnalyticsV2ApplicationRecordFormat {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.RecordFormat resource property to the template. For an SQL-based Amazon Kinesis Data Analytics application, describes the record format and relevant mapping information that should be applied to schematize the records on the stream.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.RecordFormat resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, describes the record format and relevant mapping information that should be applied to schematize the records on the stream.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html

    .PARAMETER MappingParameters
        When you configure application input at the time of creating or updating an application, provides additional mapping information specific to the record format such as JSON, CSV, or record fields delimited by some delimiter on the streaming source.

        Type: MappingParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-mappingparameters
        UpdateType: Mutable

    .PARAMETER RecordFormatType
        The type of record format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-recordformattype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.RecordFormat')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MappingParameters,
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
        $RecordFormatType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.RecordFormat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
