function Add-VSKinesisAnalyticsApplicationMappingParameters {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::Application.MappingParameters resource property to the template. When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter on the streaming source.

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::Application.MappingParameters resource property to the template.
When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter on the streaming source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html

    .PARAMETER JSONMappingParameters
        Provides additional mapping information when JSON is the record format on the streaming source.

        Type: JSONMappingParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-jsonmappingparameters
        UpdateType: Mutable

    .PARAMETER CSVMappingParameters
        Provides additional mapping information when the record format uses delimiters for example, CSV.

        Type: CSVMappingParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-csvmappingparameters
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalytics.Application.MappingParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $JSONMappingParameters,
        [parameter(Mandatory = $false)]
        $CSVMappingParameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.Application.MappingParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
