# Add-VSBackupBackupSelectionBackupSelectionResourceType

## SYNOPSIS
Adds an AWS::Backup::BackupSelection.BackupSelectionResourceType resource property to the template.
Specifies an object containing properties used to assign a set of resources to a backup plan.

## SYNTAX

```
Add-VSBackupBackupSelectionBackupSelectionResourceType [[-ListOfTags] <Object>] [-SelectionName] <Object>
 [-IamRoleArn] <Object> [[-Resources] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Backup::BackupSelection.BackupSelectionResourceType resource property to the template.
Specifies an object containing properties used to assign a set of resources to a backup plan.

## PARAMETERS

### -ListOfTags
An array of conditions used to specify a set of resources to assign to a backup plan; for example, "StringEquals": {"ec2:ResourceTag/Department": "accounting".

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-listoftags
ItemType: ConditionResourceType
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectionName
The display name of a resource selection document.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-selectionname
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

### -IamRoleArn
The ARN of the IAM role that AWS Backup uses to authenticate when restoring the target resource; for example, arn:aws:iam::123456789012:role/S3Access.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-iamrolearn
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

### -Resources
An array of strings that either contain Amazon Resource Names ARNs or match patterns such as "arn:aws:ec2:us-east-1:123456789012:volume/*" of resources to assign to a backup plan.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-resources
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Backup.BackupSelection.BackupSelectionResourceType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html)

