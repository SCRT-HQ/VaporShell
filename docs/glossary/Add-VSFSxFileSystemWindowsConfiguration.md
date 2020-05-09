# Add-VSFSxFileSystemWindowsConfiguration

## SYNOPSIS
Adds an AWS::FSx::FileSystem.WindowsConfiguration resource property to the template.
The Microsoft Windows configuration for the file system being created.

## SYNTAX

```
Add-VSFSxFileSystemWindowsConfiguration [[-SelfManagedActiveDirectoryConfiguration] <Object>]
 [[-WeeklyMaintenanceStartTime] <Object>] [[-ActiveDirectoryId] <Object>] [[-DeploymentType] <Object>]
 [[-ThroughputCapacity] <Object>] [[-CopyTagsToBackups] <Object>] [[-DailyAutomaticBackupStartTime] <Object>]
 [[-AutomaticBackupRetentionDays] <Object>] [[-PreferredSubnetId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::FSx::FileSystem.WindowsConfiguration resource property to the template.
The Microsoft Windows configuration for the file system being created.

## PARAMETERS

### -SelfManagedActiveDirectoryConfiguration
The configuration that Amazon FSx uses to join the Windows File Server instance to your self-managed including on-premises Microsoft Active Directory AD directory.

Type: SelfManagedActiveDirectoryConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration
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

### -WeeklyMaintenanceStartTime
The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-weeklymaintenancestarttime
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ActiveDirectoryId
The ID for an existing AWS Managed Microsoft Active Directory AD instance that the file system should join when it's created.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-activedirectoryid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeploymentType
Specifies the file system deployment type, valid values are the following:
+  MULTI_AZ_1 - Deploys a high availability file system that is configured for Multi-AZ redundancy to tolerate temporary Availability Zone AZ unavailability.
You can only deploy a Multi-AZ file system in AWS Regions that have a minimum of three Availability Zones.
Also supports HDD storage type
+  SINGLE_AZ_1 - Default Choose to deploy a file system that is configured for single AZ redundancy.
+  SINGLE_AZ_2 - The latest generation Single AZ file system.
Specifies a file system that is configured for single AZ redundancy and supports HDD storage type.
For more information, see  Availability and Durability: Single-AZ and Multi-AZ File Systems: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-deploymenttype
PrimitiveType: String
UpdateType: Immutable

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

### -ThroughputCapacity
The throughput of an Amazon FSx file system, measured in megabytes per second, in 2 to the *n*th increments, between 2^3 8 and 2^11 2048.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-throughputcapacity
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CopyTagsToBackups
A boolean flag indicating whether tags for the file system should be copied to backups.
This value defaults to false.
If it's set to true, all tags for the file system are copied to all automatic and user-initiated backups where the user doesn't specify tags.
If this value is true, and you specify one or more tags, only the specified tags are copied to backups.
If you specify one or more tags when creating a user-initiated backup, no tags are copied from the file system, regardless of this value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-copytagstobackups
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DailyAutomaticBackupStartTime
The preferred time to take daily automatic backups, formatted HH:MM in the UTC time zone.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-dailyautomaticbackupstarttime
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutomaticBackupRetentionDays
The number of days to retain automatic backups.
The default is to retain backups for 7 days.
Setting this value to 0 disables the creation of automatic backups.
The maximum retention period for backups is 35 days.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-automaticbackupretentiondays
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredSubnetId
Required when DeploymentType is set to MULTI_AZ_1.
This specifies the subnet in which you want the preferred file server to be located.
For in-AWS applications, we recommend that you launch your clients in the same Availability Zone AZ as your preferred file server to reduce cross-AZ data transfer costs and minimize latency.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-preferredsubnetid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.FSx.FileSystem.WindowsConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html)

