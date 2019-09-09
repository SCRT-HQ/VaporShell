# New-VSRDSDBCluster

## SYNOPSIS
Adds an AWS::RDS::DBCluster resource to the template.
The AWS::RDS::DBCluster resource creates an Amazon Aurora DB cluster.
For more information, see Managing an Amazon Aurora DB Cluster: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Aurora.html in the *Amazon Aurora User Guide*.

## SYNTAX

```
New-VSRDSDBCluster [-LogicalId] <String> [-AssociatedRoles <Object>] [-AvailabilityZones <Object>]
 [-BacktrackWindow <Object>] [-BackupRetentionPeriod <Int32>] [-DBClusterIdentifier <Object>]
 [-DBClusterParameterGroupName <Object>] [-DBSubnetGroupName <Object>] [-DatabaseName <Object>]
 [-DeletionProtection <Boolean>] [-EnableCloudwatchLogsExports <Object>]
 [-EnableIAMDatabaseAuthentication <Boolean>] -Engine <Object> [-EngineMode <Object>] [-EngineVersion <Object>]
 [-KmsKeyId <Object>] [-MasterUserPassword <Object>] [-MasterUsername <Object>] [-Port <Int32>]
 [-PreferredBackupWindow <Object>] [-PreferredMaintenanceWindow <Object>]
 [-ReplicationSourceIdentifier <Object>] [-RestoreType <Object>] [-ScalingConfiguration <Object>]
 [-SnapshotIdentifier <Object>] [-SourceDBClusterIdentifier <Object>] [-SourceRegion <Object>]
 [-StorageEncrypted <Boolean>] [-Tags <Object>] [-UseLatestRestorableTime <Boolean>]
 [-VpcSecurityGroupIds <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::DBCluster resource to the template.
The AWS::RDS::DBCluster resource creates an Amazon Aurora DB cluster.
For more information, see Managing an Amazon Aurora DB Cluster: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Aurora.html in the *Amazon Aurora User Guide*.

**Note**

You can only create this resource in regions where Amazon Aurora is supported.

The default DeletionPolicy for AWS::RDS::DBCluster resources is Snapshot.
For more information about how AWS CloudFormation deletes resources, see  DeletionPolicy Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssociatedRoles
Provides a list of the AWS Identity and Access Management IAM roles that are associated with the DB cluster.
IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-associatedroles
DuplicatesAllowed: False
ItemType: DBClusterRole
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityZones
A list of Availability Zones AZs where instances in the DB cluster can be created.
For information on AWS Regions and Availability Zones, see Choosing the Regions and Availability Zones: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html in the *Amazon Aurora User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-availabilityzones
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BacktrackWindow
The target backtrack window, in seconds.
To disable backtracking, set this value to 0.
Default: 0
Constraints:
+ If specified, this value must be set to a number from 0 to 259,200 72 hours.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backtrackwindow
PrimitiveType: Long
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupRetentionPeriod
The number of days for which automated backups are retained.
Default: 1
Constraints:
+ Must be a value from 1 to 35

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backuprententionperiod
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -DBClusterIdentifier
The DB cluster identifier.
This parameter is stored as a lowercase string.
Constraints:
+ Must contain from 1 to 63 letters, numbers, or hyphens.
+ First character must be a letter.
+ Can't end with a hyphen or contain two consecutive hyphens.
Example: my-cluster1

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusteridentifier
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DBClusterParameterGroupName
The name of the DB cluster parameter group to associate with this DB cluster.
If you apply a parameter group to an existing DB cluster, then its DB instances might need to reboot.
This can result in an outage while the DB instances are rebooting.
If this argument is omitted, default.aurora5.6 is used.
If default.aurora5.6 is used, specifying aurora-mysql or aurora-postgresql for the Engine property might result in an error.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusterparametergroupname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DBSubnetGroupName
A DB subnet group that you want to associate with this DB cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbsubnetgroupname
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
The name of your database.
If you don't provide a name, then Amazon RDS won't create a database in this DB cluster.
For naming constraints, see Naming Constraints: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints in the *Amazon RDS User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-databasename
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionProtection
A value that indicates whether the DB cluster has deletion protection enabled.
The database can't be deleted when deletion protection is enabled.
By default, deletion protection is disabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-deletionprotection
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableCloudwatchLogsExports
The list of log types that need to be enabled for exporting to CloudWatch Logs.
The values in the list depend on the DB engine being used.
For more information, see Publishing Database Logs to Amazon CloudWatch Logs: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch in the *Amazon Aurora User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablecloudwatchlogsexports
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableIAMDatabaseAuthentication
A value that indicates whether to enable mapping of AWS Identity and Access Management IAM accounts to database accounts.
By default, mapping is disabled.
For more information, see  IAM Database Authentication: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html in the *Amazon Aurora User Guide.*

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enableiamdatabaseauthentication
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Engine
The name of the database engine to be used for this DB cluster.
Valid Values: aurora for MySQL 5.6-compatible Aurora, aurora-mysql for MySQL 5.7-compatible Aurora, and aurora-postgresql

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engine
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EngineMode
The DB engine mode of the DB cluster, either provisioned, serverless, parallelquery, global, or multimaster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enginemode
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EngineVersion
The version number of the database engine to use.
To list all of the available engine versions for aurora for MySQL 5.6-compatible Aurora, use the following command:
aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions\].EngineVersion"
To list all of the available engine versions for aurora-mysql for MySQL 5.7-compatible Aurora, use the following command:
aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions\].EngineVersion"
To list all of the available engine versions for aurora-postgresql, use the following command:
aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions\].EngineVersion"

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engineversion
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsKeyId
The Amazon Resource Name ARN of the AWS Key Management Service master key that is used to encrypt the database instances in the DB cluster, such as arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.
If you enable the StorageEncrypted property but don't specify this property, the default master key is used.
If you specify this property, you must set the StorageEncrypted property to true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-kmskeyid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MasterUserPassword
The master password for the DB instance.
If you specify the SourceDBInstanceIdentifier or DBSnapshotIdentifier property, don't specify this property.
The value is inherited from the source DB instance or snapshot.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masteruserpassword
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MasterUsername
The name of the master user for the DB cluster.
You must specify MasterUsername, unless you specify SnapshotIdentifier.
In that case, don't specify MasterUsername.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masterusername
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
The port number on which the instances in the DB cluster accept connections.
Default: 3306 if engine is set as aurora or 5432 if set to aurora-postgresql.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-port
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredBackupWindow
The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.
The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region.
To see the time blocks available, see  Adjusting the Preferred DB Cluster Maintenance Window: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora in the *Amazon Aurora User Guide.*
Constraints:
+ Must be in the format hh24:mi-hh24:mi.
+ Must be in Universal Coordinated Time UTC.
+ Must not conflict with the preferred maintenance window.
+ Must be at least 30 minutes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredbackupwindow
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredMaintenanceWindow
The weekly time range during which system maintenance can occur, in Universal Coordinated Time UTC.
Format: ddd:hh24:mi-ddd:hh24:mi
The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
To see the time blocks available, see  Adjusting the Preferred DB Cluster Maintenance Window: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora in the *Amazon Aurora User Guide.*
Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
Constraints: Minimum 30-minute window.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredmaintenancewindow
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationSourceIdentifier
The Amazon Resource Name ARN of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-replicationsourceidentifier
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestoreType
The type of restore to be performed.
You can specify one of the following values:
+  full-copy - The new DB cluster is restored as a full copy of the source DB cluster.
+  copy-on-write - The new DB cluster is restored as a clone of the source DB cluster.
Constraints: You can't specify copy-on-write if the engine version of the source DB cluster is earlier than 1.11.
If you don't specify a RestoreType value, then the new DB cluster is restored as a full copy of the source DB cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-restoretype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScalingConfiguration
The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-scalingconfiguration
Type: ScalingConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SnapshotIdentifier
The identifier for the DB snapshot or DB cluster snapshot to restore from.
You can use either the name or the Amazon Resource Name ARN to specify a DB cluster snapshot.
However, you can use only the ARN to specify a DB snapshot.
After you restore a DB cluster with a SnapshotIdentifier property, you must specify the same SnapshotIdentifier property for any future updates to the DB cluster.
When you specify this property for an update, the DB cluster is not restored from the snapshot again, and the data in the database is not changed.
However, if you don't specify the SnapshotIdentifier property, an empty DB cluster is created, and the original DB cluster is deleted.
If you specify a property that is different from the previous snapshot restore property, the DB cluster is restored from the specified SnapshotIdentifier property, and the original DB cluster is deleted.
Constraints:
+ Must match the identifier of an existing Snapshot.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-snapshotidentifier
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDBClusterIdentifier
The identifier of the source DB cluster from which to restore.
Constraints:
+ Must match the identifier of an existing DBCluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourcedbclusteridentifier
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceRegion
The AWS Region which contains the source DB cluster when replicating a DB cluster.
For example, us-east-1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourceregion
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageEncrypted
Indicates whether the DB instance is encrypted.
If you specify the DBClusterIdentifier, DBSnapshotIdentifier, or SourceDBInstanceIdentifier property, don't specify this property.
The value is inherited from the cluster, snapshot, or source DB instance.
If you specify the KmsKeyId property, then you must enable encryption.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-storageencrypted
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Tags to assign to the DB cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-tags
DuplicatesAllowed: True
ItemType: Tag
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseLatestRestorableTime
A value that indicates whether to restore the DB cluster to the latest restorable backup time.
By default, the DB cluster is not restored to the latest restorable backup time.
Constraints: Can't be specified if RestoreToTime parameter is provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-uselatestrestorabletime
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -VpcSecurityGroupIds
A list of EC2 VPC security groups to associate with this DB cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-vpcsecuritygroupids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.DBCluster
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html)

