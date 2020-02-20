function Add-VSGlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html

    .PARAMETER ConnectionPasswordEncryption
        Type: ConnectionPasswordEncryption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-connectionpasswordencryption
        UpdateType: Mutable

    .PARAMETER EncryptionAtRest
        Type: EncryptionAtRest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-encryptionatrest
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Glue.DataCatalogEncryptionSettings.DataCatalogEncryptionSettings')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","ConnectionPasswordEncryption")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","ConnectionPasswordEncryption")]
    Param
    (
        [parameter(Mandatory = $false)]
        $ConnectionPasswordEncryption,
        [parameter(Mandatory = $false)]
        $EncryptionAtRest
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.DataCatalogEncryptionSettings.DataCatalogEncryptionSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
