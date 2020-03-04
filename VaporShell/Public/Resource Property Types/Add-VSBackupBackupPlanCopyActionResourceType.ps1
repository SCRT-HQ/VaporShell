function Add-VSBackupBackupPlanCopyActionResourceType {
    <#
    .SYNOPSIS
        Adds an AWS::Backup::BackupPlan.CopyActionResourceType resource property to the template. <a name="aws-properties-backup-backupplan-copyactionresourcetype-description"></a>The CopyActionResourceType property type specifies Not currently supported by AWS CloudFormation. for an AWS::Backup::BackupPlan: aws-resource-backup-backupplan.md.

    .DESCRIPTION
        Adds an AWS::Backup::BackupPlan.CopyActionResourceType resource property to the template.
<a name="aws-properties-backup-backupplan-copyactionresourcetype-description"></a>The CopyActionResourceType property type specifies Not currently supported by AWS CloudFormation. for an AWS::Backup::BackupPlan: aws-resource-backup-backupplan.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html

    .PARAMETER Lifecycle
        Not currently supported by AWS CloudFormation.

        Type: LifecycleResourceType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-lifecycle
        UpdateType: Mutable

    .PARAMETER DestinationBackupVaultArn
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-destinationbackupvaultarn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Backup.BackupPlan.CopyActionResourceType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Lifecycle,
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
        $DestinationBackupVaultArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Backup.BackupPlan.CopyActionResourceType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
