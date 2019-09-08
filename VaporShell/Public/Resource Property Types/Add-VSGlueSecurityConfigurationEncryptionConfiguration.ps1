function Add-VSGlueSecurityConfigurationEncryptionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::SecurityConfiguration.EncryptionConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::Glue::SecurityConfiguration.EncryptionConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html

    .PARAMETER S3Encryptions
        The encyption configuration for Amazon Simple Storage Service Amazon S3 data.

        Type: S3Encryptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-s3encryptions
        UpdateType: Mutable

    .PARAMETER CloudWatchEncryption
        The encryption configuration for Amazon CloudWatch.

        Type: CloudWatchEncryption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-cloudwatchencryption
        UpdateType: Mutable

    .PARAMETER JobBookmarksEncryption
        The encryption configuration for job bookmarks.

        Type: JobBookmarksEncryption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-jobbookmarksencryption
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Glue.SecurityConfiguration.EncryptionConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Encryptions,
        [parameter(Mandatory = $false)]
        $CloudWatchEncryption,
        [parameter(Mandatory = $false)]
        $JobBookmarksEncryption
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.SecurityConfiguration.EncryptionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
