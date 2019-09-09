# Add-VSBackupBackupPlanBackupPlanResourceType

## SYNOPSIS
Adds an AWS::Backup::BackupPlan.BackupPlanResourceType resource property to the template.
Specifies an object containing properties used to create a backup plan.

## SYNTAX

```
Add-VSBackupBackupPlanBackupPlanResourceType [-BackupPlanName] <Object> [-BackupPlanRule] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Backup::BackupPlan.BackupPlanResourceType resource property to the template.
Specifies an object containing properties used to create a backup plan.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BackupPlanName
The display name of a backup plan.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupPlanRule
An array of BackupRule objects, each of which specifies a scheduled task that is used to back up a selection of resources.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanrule
ItemType: BackupRuleResourceType
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Backup.BackupPlan.BackupPlanResourceType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html)

