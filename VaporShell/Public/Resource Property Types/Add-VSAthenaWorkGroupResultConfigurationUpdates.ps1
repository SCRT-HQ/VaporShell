function Add-VSAthenaWorkGroupResultConfigurationUpdates {
    <#
    .SYNOPSIS
        Adds an AWS::Athena::WorkGroup.ResultConfigurationUpdates resource property to the template. The information about the updates in the query results, such as output location and encryption configuration for the query results.

    .DESCRIPTION
        Adds an AWS::Athena::WorkGroup.ResultConfigurationUpdates resource property to the template.
The information about the updates in the query results, such as output location and encryption configuration for the query results.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html

    .PARAMETER EncryptionConfiguration
        The encryption configuration for the query results.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-encryptionconfiguration
        UpdateType: Mutable
        Type: EncryptionConfiguration

    .PARAMETER OutputLocation
        The location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/. For more information, see Query Results: https://docs.aws.amazon.com/athena/latest/ug/querying.html If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup. The "workgroup settings override" is specified in EnforceWorkGroupConfiguration true/false in the WorkGroupConfiguration. See EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-outputlocation
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RemoveEncryptionConfiguration
        If set to "true", indicates that the previously-specified encryption configuration also known as the client-side setting for queries in this workgroup should be ignored and set to null. If set to "false" or not set, and a value is present in the EncryptionConfiguration in ResultConfigurationUpdates the client-side setting, the EncryptionConfiguration in the workgroup's ResultConfiguration will be updated with the new value. For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeencryptionconfiguration
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER RemoveOutputLocation
        If set to "true", indicates that the previously-specified query results location also known as a client-side setting for queries in this workgroup should be ignored and set to null. If set to "false" or not set, and a value is present in the OutputLocation in ResultConfigurationUpdates the client-side setting, the OutputLocation in the workgroup's ResultConfiguration will be updated with the new value. For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeoutputlocation
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Athena.WorkGroup.ResultConfigurationUpdates')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EncryptionConfiguration,
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
        $OutputLocation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RemoveEncryptionConfiguration,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RemoveOutputLocation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Athena.WorkGroup.ResultConfigurationUpdates'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
