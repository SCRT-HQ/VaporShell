function Add-VSKinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.MappingParameters resource property to the template

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.MappingParameters resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html

    .PARAMETER JSONMappingParameters
        Type: JSONMappingParameters    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-jsonmappingparameters    
        UpdateType: Mutable    

    .PARAMETER CSVMappingParameters
        Type: CSVMappingParameters    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-csvmappingparameters    
        UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.MappingParameters')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.ApplicationReferenceDataSource.MappingParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
