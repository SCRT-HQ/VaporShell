function Add-VSMSKClusterEncryptionInfo {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.EncryptionInfo resource property to the template. Includes encryption-related information, such as the AWS KMS key used for encrypting data at rest and whether you want MSK to encrypt your data in transit.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.EncryptionInfo resource property to the template.
Includes encryption-related information, such as the AWS KMS key used for encrypting data at rest and whether you want MSK to encrypt your data in transit.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html

    .PARAMETER EncryptionAtRest
        The data-volume encryption details.

        Type: EncryptionAtRest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionatrest
        UpdateType: Immutable

    .PARAMETER EncryptionInTransit
        The details for encryption in transit.

        Type: EncryptionInTransit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionintransit
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.EncryptionInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EncryptionAtRest,
        [parameter(Mandatory = $false)]
        $EncryptionInTransit
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.EncryptionInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
