# Add-VSBackupBackupVaultNotificationObjectType

## SYNOPSIS
Adds an AWS::Backup::BackupVault.NotificationObjectType resource property to the template.
Specifies an object containing SNS event notification properties for the target backup vault.

## SYNTAX

```
Add-VSBackupBackupVaultNotificationObjectType [-SNSTopicArn] <Object> [-BackupVaultEvents] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Backup::BackupVault.NotificationObjectType resource property to the template.
Specifies an object containing SNS event notification properties for the target backup vault.

## PARAMETERS

### -SNSTopicArn
An ARN that uniquely identifies an Amazon Simple Notification Service Amazon SNS topic; for example, arn:aws:sns:us-west-2:111122223333:MyTopic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-snstopicarn
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

### -BackupVaultEvents
An array of events that indicate the status of jobs to back up resources to the backup vault.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-backupvaultevents
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

### Vaporshell.Resource.Backup.BackupVault.NotificationObjectType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html)

