# Add-VSBackupBackupPlanLifecycleResourceType

## SYNOPSIS
Adds an AWS::Backup::BackupPlan.LifecycleResourceType resource property to the template.
Specifies an object containing an array of Transition objects that determine how long in days before a recovery point transitions to cold storage or is deleted.

## SYNTAX

```
Add-VSBackupBackupPlanLifecycleResourceType [[-DeleteAfterDays] <Double>]
 [[-MoveToColdStorageAfterDays] <Double>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Backup::BackupPlan.LifecycleResourceType resource property to the template.
Specifies an object containing an array of Transition objects that determine how long in days before a recovery point transitions to cold storage or is deleted.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeleteAfterDays
Specifies the number of days after creation that a recovery point is deleted.
Must be greater than MoveToColdStorageAfterDays.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-deleteafterdays
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MoveToColdStorageAfterDays
Specifies the number of days after creation that a recovery point is moved to cold storage.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-movetocoldstorageafterdays
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Backup.BackupPlan.LifecycleResourceType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html)

