# Add-VSBackupBackupSelectionConditionResourceType

## SYNOPSIS
Adds an AWS::Backup::BackupSelection.ConditionResourceType resource property to the template.
Specifies an object that contains an array of triplets made up of a condition type (such as StringEquals, a key, and a value.
Conditions are used to filter resources in a selection that is assigned to a backup plan.

## SYNTAX

```
Add-VSBackupBackupSelectionConditionResourceType [-ConditionValue] <Object> [-ConditionKey] <Object>
 [-ConditionType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Backup::BackupSelection.ConditionResourceType resource property to the template.
Specifies an object that contains an array of triplets made up of a condition type (such as StringEquals, a key, and a value.
Conditions are used to filter resources in a selection that is assigned to a backup plan.

## PARAMETERS

### -ConditionValue
The value in a key-value pair.
For example, in "ec2:ResourceTag/Department": "accounting", "accounting" is the value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionvalue
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

### -ConditionKey
The key in a key-value pair.
For example, in "ec2:ResourceTag/Department": "accounting", "ec2:ResourceTag/Department" is the key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionkey
PrimitiveType: String
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

### -ConditionType
An operation, such as StringEquals, that is applied to a key-value pair used to filter resources in a selection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditiontype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Backup.BackupSelection.ConditionResourceType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html)

