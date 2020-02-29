function Add-VSGlueSecurityConfigurationS3Encryptions {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::SecurityConfiguration.S3Encryptions resource property to the template. Specifies a list of S3Encryption, containing encyption configuration for Amazon Simple Storage Service (Amazon S3 data for a security configuration.

    .DESCRIPTION
        Adds an AWS::Glue::SecurityConfiguration.S3Encryptions resource property to the template.
Specifies a list of S3Encryption, containing encyption configuration for Amazon Simple Storage Service (Amazon S3 data for a security configuration.

*Required*: No

*Type:* List of S3Encryption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html

*Update requires:* No interruption

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryptions.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Glue.SecurityConfiguration.S3Encryptions')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.SecurityConfiguration.S3Encryptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
