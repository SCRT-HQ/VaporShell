function Add-VSKinesisAnalyticsV2ApplicationJSONMappingParameters {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.JSONMappingParameters resource property to the template. For an SQL-based Amazon Kinesis Data Analytics application, provides additional mapping information when JSON is the record format on the streaming source.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.JSONMappingParameters resource property to the template.
For an SQL-based Amazon Kinesis Data Analytics application, provides additional mapping information when JSON is the record format on the streaming source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html

    .PARAMETER RecordRowPath
        The path to the top-level parent that contains the records.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html#cfn-kinesisanalyticsv2-application-jsonmappingparameters-recordrowpath
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.JSONMappingParameters')]
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
        $RecordRowPath
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.JSONMappingParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
