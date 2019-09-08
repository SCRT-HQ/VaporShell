function Add-VSBackupBackupPlanLifecycleResourceType {
    <#
    .SYNOPSIS
        Adds an AWS::Backup::BackupPlan.LifecycleResourceType resource property to the template

    .DESCRIPTION
        Adds an AWS::Backup::BackupPlan.LifecycleResourceType resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html

    .PARAMETER DeleteAfterDays
        Specifies the number of days after creation that a recovery point is deleted. Must be greater than MoveToColdStorageAfterDays.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-deleteafterdays
        PrimitiveType: Double
        UpdateType: Mutable

    .PARAMETER MoveToColdStorageAfterDays
        Specifies the number of days after creation that a recovery point is moved to cold storage.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-movetocoldstorageafterdays
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Backup.BackupPlan.LifecycleResourceType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Double]
        $DeleteAfterDays,
        [parameter(Mandatory = $false)]
        [System.Double]
        $MoveToColdStorageAfterDays
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Backup.BackupPlan.LifecycleResourceType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
