function New-VSRDSDBInstance {
    <#
    .SYNOPSIS
        Adds an AWS::RDS::DBInstance resource to the template. The AWS::RDS::DBInstance resource creates an Amazon RDS DB instance.

    .DESCRIPTION
        Adds an AWS::RDS::DBInstance resource to the template. The AWS::RDS::DBInstance resource creates an Amazon RDS DB instance.

**Important**

If a DB instance is deleted or replaced during an update, AWS CloudFormation deletes all automated snapshots. However, it retains manual DB snapshots. During an update that requires replacement, you can apply a stack policy to prevent DB instances from being replaced. For more information, see Prevent Updates to Stack Resources: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html.

**Updating DB Instances**

When properties labeled "*Update requires:* Replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement" are updated, AWS CloudFormation first creates a replacement DB instance, then changes references from other dependent resources to point to the replacement DB instance, and finally deletes the old DB instance.

**Important**

We highly recommend that you take a snapshot of the database before updating the stack. If you don't, you lose the data when AWS CloudFormation replaces your DB instance. To preserve your data, perform the following procedure:

Deactivate any applications that are using the DB instance so that there's no activity on the DB instance.

Create a snapshot of the DB instance. For more information about creating DB snapshots, see Creating a DB snapshot: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateSnapshot.html.

If you want to restore your instance using a DB snapshot, modify the updated template with your DB instance changes and add the DBSnapshotIdentifier property with the ID of the DB snapshot that you want to use.

After you restore a DB instance with a DBSnapshotIdentifier property, you must specify the same DBSnapshotIdentifier property for any future updates to the DB instance. When you specify this property for an update, the DB instance is not restored from the DB snapshot again, and the data in the database is not changed. However, if you don't specify the DBSnapshotIdentifier property, an empty DB instance is created, and the original DB instance is deleted. If you specify a property that is different from the previous snapshot restore property, the DB instance is restored from the specified DBSnapshotIdentifier property, and the original DB instance is deleted.

Update the stack.

For more information about updating other properties of this resource, see  ModifyDBInstance: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_ModifyDBInstance.html. For more information about updating stacks, see AWS CloudFormation Stacks Updates: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html.

**Deleting DB Instances**

You can set a deletion policy for your DB instance to control how AWS CloudFormation handles the instance when the stack is deleted. For Amazon RDS DB instances, you can choose to *retain* the instance, to *delete* the instance, or to *create a snapshot* of the instance. The default AWS CloudFormation behavior depends on the DBClusterIdentifier property:

1. For AWS::RDS::DBInstance resources that don't specify the DBClusterIdentifier property, AWS CloudFormation saves a snapshot of the DB instance.

1.  For AWS::RDS::DBInstance resources that do specify the DBClusterIdentifier property, AWS CloudFormation deletes the DB instance.

For more information, see DeletionPolicy Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER AllocatedStorage
        The amount of storage in gigabytes to be initially allocated for the database instance.
If any value is set in the Iops parameter, AllocatedStorage must be at least 100 GB, which corresponds to the minimum Iops value of 1,000. If you increase the Iops value in 1,000 IOPS increments, then you must also increase the AllocatedStorage value in 100-GB increments.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allocatedstorage
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER AllowMajorVersionUpgrade
        Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.
Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB Instance's current version.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allowmajorversionupgrade
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER AssociatedRoles
        The AWS Identity and Access Management IAM roles associated with the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-associatedroles
        DuplicatesAllowed: False
        ItemType: DBInstanceRole
        Type: List
        UpdateType: Mutable

    .PARAMETER AutoMinorVersionUpgrade
        Indicates that minor engine upgrades will be applied automatically to the DB Instance during the maintenance window.
Default: true

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-autominorversionupgrade
        PrimitiveType: Boolean
        UpdateType: Conditional

    .PARAMETER AvailabilityZone
        The Availability Zone that the database instance will be created in.
Default: A random, system-chosen Availability Zone in the endpoint's region.
Example: us-east-1d
Constraint: The AvailabilityZone parameter cannot be specified if the MultiAZ parameter is set to true. The specified Availability Zone must be in the same region as the current endpoint.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-availabilityzone
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER BackupRetentionPeriod
        The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.
Default: 1
Constraints:
+ Must be a value from 0 to 8
+ Cannot be set to 0 if the DB Instance is a master instance with read replicas

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-backupretentionperiod
        PrimitiveType: Integer
        UpdateType: Conditional

    .PARAMETER CharacterSetName
        For supported engines, indicates that the DB Instance should be associated with the specified CharacterSet.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-charactersetname
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER CopyTagsToSnapshot
        A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.
**Amazon Aurora**
Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-copytagstosnapshot
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER DBClusterIdentifier
        The identifier of the DB cluster that the instance will belong to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbclusteridentifier
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DBInstanceClass
        The compute and memory capacity of the DB instance, for example, db.m4.large. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see DB Instance Class: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html in the *Amazon RDS User Guide.*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceclass
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DBInstanceIdentifier
        A name for the DB instance. If you specify a name, AWS CloudFormation converts it to lowercase. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the DB instance. For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html.
If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceidentifier
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DBName
        The meaning of this parameter differs according to the database engine you use.
If you specify the  DBSnapshotIdentifier: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsnapshotidentifier property, AWS CloudFormation ignores this property.
If you restore DB instances from snapshots, this property doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.
**MySQL**
The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.
Constraints:
+ Must contain 1 to 64 letters or numbers.
+ Can't be a word reserved by the specified database engine
**MariaDB**
The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.
Constraints:
+ Must contain 1 to 64 letters or numbers.
+ Can't be a word reserved by the specified database engine
**PostgreSQL**
The name of the database to create when the DB instance is created. If this parameter is not specified, the default "postgres" database is created in the DB instance.
Constraints:
+ Must contain 1 to 63 letters, numbers, or underscores.
+ Must begin with a letter or an underscore. Subsequent characters can be letters, underscores, or digits 0-9.
+ Can't be a word reserved by the specified database engine
**Oracle**
The Oracle System ID SID of the created DB instance. If you specify null, the default value ORCL is used. You can't specify the string NULL, or any other reserved word, for DBName.
Default: ORCL
Constraints:
+ Can't be longer than 8 characters
**SQL Server**
Not applicable. Must be null.
**Amazon Aurora**
The name of the database to create when the primary instance of the DB cluster is created. If this parameter is not specified, no database is created in the DB instance.
Constraints:
+ Must contain 1 to 64 letters or numbers.
+ Can't be a word reserved by the specified database engine

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DBParameterGroupName
        The name of an existing DB parameter group or a reference to an AWS::RDS::DBParameterGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html resource created in the template.
If any of the data members of the referenced parameter group are changed during an update, the DB instance might need to be restarted, which causes some interruption. If the parameter group contains static parameters, whether they were changed or not, an update triggers a reboot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbparametergroupname
        PrimitiveType: String
        UpdateType: Conditional

    .PARAMETER DBSecurityGroups
        A list of the DB security groups to assign to the DB instance. The list can include both the name of existing DB security groups or references to AWS::RDS::DBSecurityGroup resources created in the template.
If you set DBSecurityGroups, you must not set VPCSecurityGroups, and vice versa. Also, note that the EC2VpcId property exists only for backwards compatibility with older regions and is no longer recommended for providing security information to an RDS DB instance. Instead, use VPCSecurityGroups.
If you specify this property, AWS CloudFormation sends only the following properties if specified to Amazon RDS during create operations:
+ AllocatedStorage
+ AutoMinorVersionUpgrade
+ AvailabilityZone
+ BackupRetentionPeriod
+ CharacterSetName
+ DBInstanceClass
+ DBName
+ DBParameterGroupName
+ DBSecurityGroups
+ DBSubnetGroupName
+ Engine
+ EngineVersion
+ Iops
+ LicenseModel
+ MasterUsername
+ MasterUserPassword
+ MultiAZ
+ OptionGroupName
+ PreferredBackupWindow
+ PreferredMaintenanceWindow
If you specify this property, AWS CloudFormation sends only the following properties if specified to Amazon RDS during updates:
+ AllocatedStorage
+ AutoMinorVersionUpgrade
+ AllowMajorVersionUpgrade
+  BackupRetentionPeriod
+  DBInstanceClass
+  DBParameterGroupName
+  DBSecurityGroups
+ DBInstanceIdentifier
+ EngineVersion
+ Iops
+ MasterUserPassword
+ MultiAZ
+ OptionGroupName
+ PreferredBackupWindow
+ PreferredMaintenanceWindow
All other properties are ignored. Specify a virtual private cloud VPC security group if you want to submit other properties, such as StorageType, StorageEncrypted, or KmsKeyId. If you're already using the DBSecurityGroups property, you can't use these other properties by updating your DB instance to use a VPC security group. You must recreate the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups
        DuplicatesAllowed: True
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER DBSnapshotIdentifier
        The name or Amazon Resource Name ARN of the DB snapshot that's used to restore the DB instance. If you're restoring from a shared manual DB snapshot, you must specify the ARN of the snapshot.
By specifying this property, you can create a DB instance from the specified DB snapshot. If the DBSnapshotIdentifier property is an empty string or the AWS::RDS::DBInstance declaration has no DBSnapshotIdentifier property, AWS CloudFormation creates a new database. If the property contains a value other than an empty string, AWS CloudFormation creates a database from the specified snapshot. If a snapshot with the specified name doesn't exist, AWS CloudFormation can't create the database and it rolls back the stack.
Some DB instance properties aren't valid when you restore from a snapshot, such as the MasterUsername and MasterUserPassword properties. For information about the properties that you can specify, see the RestoreDBInstanceFromDBSnapshot action in the *Amazon RDS API Reference*.
After you restore a DB instance with a DBSnapshotIdentifier property, you must specify the same DBSnapshotIdentifier property for any future updates to the DB instance. When you specify this property for an update, the DB instance is not restored from the DB snapshot again, and the data in the database is not changed. However, if you don't specify the DBSnapshotIdentifier property, an empty DB instance is created, and the original DB instance is deleted. If you specify a property that is different from the previous snapshot restore property, the DB instance is restored from the specified DBSnapshotIdentifier property, and the original DB instance is deleted.
If you specify this property, you can't specify the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsnapshotidentifier
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DBSubnetGroupName
        A DB subnet group to associate with the DB instance. If you update this value, the new subnet group must be a subnet group in a new VPC.
If there's no DB subnet group, then the instance isn't a VPC DB instance.
For more information about using Amazon RDS in a VPC, see Using Amazon RDS with Amazon Virtual Private Cloud VPC: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.html in the *Amazon Relational Database Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsubnetgroupname
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER DeleteAutomatedBackups
        A value that indicates whether to remove automated backups immediately after the DB instance is deleted. This parameter isn't case-sensitive. The default is to remove automated backups immediately after the DB instance is deleted.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deleteautomatedbackups
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER DeletionProtection
        A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see  Deleting a DB Instance: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deletionprotection
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Domain
        For an Amazon RDS DB instance that's running Microsoft SQL Server, this parameter specifies the Active Directory directory ID to create the instance in. Amazon RDS uses Windows Authentication to authenticate users that connect to the DB instance. For more information, see Using Windows Authentication with an Amazon RDS DB Instance Running Microsoft SQL Server: https://docs.aws.amazon.com/AmazonRDS/latest/DeveloperGuide/USER_SQLServerWinAuth.html in the *Amazon RDS User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domain
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER DomainIAMRoleName
        Specify the name of the IAM role to be used when making API calls to the Directory Service.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domainiamrolename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER EnableCloudwatchLogsExports
        The list of log types that need to be enabled for exporting to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see Publishing Database Logs to Amazon CloudWatch Logs : https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch in the *Amazon Relational Database Service User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enablecloudwatchlogsexports
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER EnableIAMDatabaseAuthentication
        A value that indicates whether to enable mapping of AWS Identity and Access Management IAM accounts to database accounts. By default, mapping is disabled.
You can enable IAM database authentication for the following database engines:
**Amazon Aurora**
Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster.
**MySQL**
+ For MySQL 5.6, minor version 5.6.34 or higher
+ For MySQL 5.7, minor version 5.7.16 or higher
+ For MySQL 8.0, minor version 8.0.16 or higher
**PostgreSQL**
+ For PostgreSQL 9.5, minor version 9.5.15 or higher
+ For PostgreSQL 9.6, minor version 9.6.11 or higher
+ PostgreSQL 10.6, 10.7, and 10.9
For more information, see  IAM Database Authentication for MySQL and PostgreSQL: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html in the *Amazon RDS User Guide.*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableiamdatabaseauthentication
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER EnablePerformanceInsights
        A value that indicates whether to enable Performance Insights for the DB instance.
For more information, see Using Amazon Performance Insights: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html in the *Amazon Relational Database Service User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableperformanceinsights
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Engine
        The name of the database engine that you want to use for this DB instance. For valid values, see the Engine parameter of the CreateDBInstance: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html action in the *Amazon RDS API Reference*.
If you don't specify a value for the DBParameterGroupName property, the default DBParameterGroup for the specified engine is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engine
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER EngineVersion
        The version number of the database engine to use.
**MySQL**
Example: 5.1.42
Type: String
**Oracle**
Example: 11.2.0.2.v2
Type: String
**SQL Server**
Example: 10.50.2789.0.v1

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engineversion
        PrimitiveType: String
        UpdateType: Conditional

    .PARAMETER Iops
        The number of I/O operations per second IOPS that the database provisions. The value must be equal to or greater than 1000.
If you specify this property, you must follow the range of allowed ratios of your requested IOPS rate to the amount of storage that you allocate IOPS to allocated storage. For example, you can provision an Oracle database instance with 1000 IOPS and 200 GB of storage a ratio of 5:1, or specify 2000 IOPS with 200 GB of storage a ratio of 10:1. For more information, see Amazon RDS Provisioned IOPS Storage to Improve Performance: https://docs.aws.amazon.com/AmazonRDS/latest/DeveloperGuide/CHAP_Storage.html#USER_PIOPS in the *Amazon RDS User Guide*.
If you specify io1 for the StorageType property, then you must also specify the Iops property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-iops
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER KmsKeyId
        The ARN of the AWS Key Management Service AWS KMS master key that's used to encrypt the DB instance, such as arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef. If you enable the StorageEncrypted property but don't specify this property, AWS CloudFormation uses the default master key. If you specify this property, you must set the StorageEncrypted property to true.
If you specify the SourceDBInstanceIdentifier property, the value is inherited from the source DB instance if the Read Replica is created in the same region.
If you create an encrypted Read Replica in a different AWS Region, then you must specify a KMS key for the destination AWS Region. KMS encryption keys are specific to the region that they're created in, and you can't use encryption keys from one region in another region.
If you specify DBSecurityGroups, AWS CloudFormation ignores this property. To specify both a security group and this property, you must use a VPC security group. For more information about Amazon RDS and VPC, see Using Amazon RDS with Amazon VPC: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html in the *Amazon RDS User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-kmskeyid
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER LicenseModel
        License model information for this DB instance.
If you've specified DBSecurityGroups and then you update the license model, AWS CloudFormation replaces the underlying DB instance. This will incur some interruptions to database availability.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-licensemodel
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MasterUserPassword
        The password for the master database user. Can be any printable ASCII character except "/", "", or "@".
Type: String
**MySQL**
Constraints: Must contain from 8 to 41 alphanumeric characters.
**Oracle**
Constraints: Must contain from 8 to 30 alphanumeric characters.
**SQL Server**
Constraints: Must contain from 8 to 128 alphanumeric characters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masteruserpassword
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MasterUsername
        The master user name for the DB instance.
If you specify the SourceDBInstanceIdentifier or DBSnapshotIdentifier property, don't specify this property. The value is inherited from the source DB instance or snapshot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masterusername
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER MonitoringInterval
        The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.
If MonitoringRoleArn is specified, then you must also set MonitoringInterval to a value other than 0.
Valid Values: 0, 1, 5, 10, 15, 30, 60

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringinterval
        PrimitiveType: Integer
        UpdateType: Conditional

    .PARAMETER MonitoringRoleArn
        The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, arn:aws:iam:123456789012:role/emaccess. For information on creating a monitoring role, go to Setting Up and Enabling Enhanced Monitoring: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling in the *Amazon RDS User Guide*.
If MonitoringInterval is set to a value other than 0, then you must supply a MonitoringRoleArn value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringrolearn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MultiAZ
        Specifies whether the database instance is a multiple Availability Zone deployment. You can't set the AvailabilityZone parameter if the MultiAZ parameter is set to true. Amazon Aurora storage is replicated across all the Availability Zones and doesn't require the MultiAZ option to be set.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-multiaz
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER OptionGroupName
        Indicates that the DB Instance should be associated with the specified option group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-optiongroupname
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PerformanceInsightsKMSKeyId
        The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name ARN, KMS key identifier, or the KMS key alias for the KMS encryption key.
If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon RDS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightskmskeyid
        PrimitiveType: String
        UpdateType: Conditional

    .PARAMETER PerformanceInsightsRetentionPeriod
        The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 2 years.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightsretentionperiod
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Port
        The port number on which the database accepts connections.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-port
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER PreferredBackupWindow
        The daily time range during which automated backups are created if automated backups are enabled, using the BackupRetentionPeriod parameter.
Default: A 30-minute window selected at random from an 8-hour block of time per region. The following list shows the time blocks for each region from which the default backup windows are assigned.
+  **US-East Northern Virginia Region:** 03:00-11:00 UTC
+  **US-West Northern California Region:** 06:00-14:00 UTC
+  **EU Ireland Region:** 22:00-06:00 UTC
+  **Asia Pacific Singapore Region:** 14:00-22:00 UTC
+  **Asia Pacific Tokyo Region: ** 17:00-03:00 UTC
Constraints: Must be in the format hh24:mi-hh24:mi. Times should be Universal Time Coordinated UTC. Must not conflict with the preferred maintenance window. Must be at least 30 minutes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredbackupwindow
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PreferredMaintenanceWindow
        The weekly time range during which system maintenance can occur, in Universal Coordinated Time UTC.
Format: ddd:hh24:mi-ddd:hh24:mi
The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see  Adjusting the Preferred DB Instance Maintenance Window: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow in the *Amazon RDS User Guide.*
This property applies when AWS CloudFormation initially creates the DB instance. If you use AWS CloudFormation to update the DB instance, those updates are applied immediately.
Constraints: Minimum 30-minute window.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredmaintenancewindow
        PrimitiveType: String
        UpdateType: Conditional

    .PARAMETER ProcessorFeatures
        The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-processorfeatures
        DuplicatesAllowed: False
        ItemType: ProcessorFeature
        Type: List
        UpdateType: Mutable

    .PARAMETER PromotionTier
        A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see  Fault Tolerance for an Aurora DB Cluster: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance in the *Amazon Aurora User Guide*.
Default: 1
Valid Values: 0 - 15

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-promotiontier
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER PubliclyAccessible
        Indicates whether the DB instance is an internet-facing instance. If you specify true, AWS CloudFormation creates an instance with a publicly resolvable DNS name, which resolves to a public IP address. If you specify false, AWS CloudFormation creates an internal instance with a DNS name that resolves to a private IP address.
The default behavior value depends on your VPC setup and the database subnet group. For more information, see the PubliclyAccessible parameter in https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html in the *Amazon RDS API Reference*.
If this resource has a public IP address and is also in a VPC that is defined in the same template, you must use the *DependsOn* attribute to declare a dependency on the VPC-gateway attachment. For more information, see DependsOn Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html.
If you specify DBSecurityGroups, AWS CloudFormation ignores this property. To specify a security group and this property, you must use a VPC security group. For more information about Amazon RDS and VPC, see Using Amazon RDS with Amazon VPC: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.html in the *Amazon RDS User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-publiclyaccessible
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER SourceDBInstanceIdentifier
        If you want to create a Read Replica DB instance, specify the ID of the source DB instance. Each DB instance can have a limited number of Read Replicas. For more information, see Working with Read Replicas: https://docs.aws.amazon.com/AmazonRDS/latest/DeveloperGuide/USER_ReadRepl.html in the *Amazon Relational Database Service Developer Guide*.
The SourceDBInstanceIdentifier property determines whether a DB instance is a Read Replica. If you remove the SourceDBInstanceIdentifier property from your template and then update your stack, AWS CloudFormation deletes the Read Replica and creates a new DB instance not a Read Replica.
+ If you specify a source DB instance that uses VPC security groups, we recommend that you specify the VPCSecurityGroups property. If you don't specify the property, the Read Replica inherits the value of the VPCSecurityGroups property from the source DB when you create the replica. However, if you update the stack, AWS CloudFormation reverts the replica's VPCSecurityGroups property to the default value because it's not defined in the stack's template. This change might cause unexpected issues.
+ Read Replicas don't support deletion policies. AWS CloudFormation ignores any deletion policy that's associated with a Read Replica.
+ If you specify SourceDBInstanceIdentifier, don't set the MultiAZ property to true, and don't specify the DBSnapshotIdentifier property. You can't deploy Read Replicas in multiple Availability Zones, and you can't create a Read Replica from a snapshot.
+  Don't set the BackupRetentionPeriod, DBName, MasterUsername, MasterUserPassword, and PreferredBackupWindow properties. The database attributes are inherited from the source DB instance, and backups are disabled for Read Replicas.
+ If the source DB instance is in a different region than the Read Replica, specify the source region in SourceRegion, and specify an ARN for a valid DB instance in SourceDBInstanceIdentifier. For more information, see Constructing a Amazon RDS Amazon Resource Name ARN: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN in the *Amazon RDS User Guide*.
+ For DB instances in Amazon Aurora clusters, don't specify this property. Amazon RDS automatically assigns writer and reader DB instances.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourcedbinstanceidentifier
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER SourceRegion
        The ID of the region that contains the source DB instance for the Read Replica.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourceregion
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER StorageEncrypted
        A value that indicates whether the DB instance is encrypted. By default, it is not encrypted.
**Amazon Aurora**
Not applicable. The encryption for DB instances is managed by the DB cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storageencrypted
        PrimitiveType: Boolean
        UpdateType: Immutable

    .PARAMETER StorageType
        Specifies storage type to be associated with the DB Instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storagetype
        PrimitiveType: String
        UpdateType: Conditional

    .PARAMETER Tags
        Tags to assign to the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-tags
        DuplicatesAllowed: True
        ItemType: Tag
        Type: List
        UpdateType: Mutable

    .PARAMETER Timezone
        The time zone of the DB instance. The time zone parameter is currently supported only by Microsoft SQL Server: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-timezone
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER UseDefaultProcessorFeatures
        A value that indicates whether the DB instance class of the DB instance uses its default processor features.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-usedefaultprocessorfeatures
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER VPCSecurityGroups
        A list of the VPC security group IDs to assign to the DB instance. The list can include both the physical IDs of existing VPC security groups and references to AWS::EC2::SecurityGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html resources created in the template.
If you set VPCSecurityGroups, you must not set https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups, and vice versa.
You can migrate a DB instance in your stack from an RDS DB security group to a VPC security group, but keep the following in mind:
+ You can't revert to using an RDS security group after you establish a VPC security group membership.
+ When you migrate your DB instance to VPC security groups, if your stack update rolls back because the DB instance update fails or because an update fails in another AWS CloudFormation resource, the rollback fails because it can't revert to an RDS security group.
+ To use the properties that are available when you use a VPC security group, you must recreate the DB instance. If you don't, AWS CloudFormation submits only the property values that are listed in the  DBSecurityGroups: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups property.
To avoid this situation, migrate your DB instance to using VPC security groups only when that is the only change in your stack template.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-vpcsecuritygroups
        DuplicatesAllowed: True
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"


    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.RDS.DBInstance')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","MasterUserPassword")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","MasterUserPassword")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
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
        $AllocatedStorage,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AllowMajorVersionUpgrade,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.RDS.DBInstance.DBInstanceRole"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AssociatedRoles,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AutoMinorVersionUpgrade,
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
        $AvailabilityZone,
        [parameter(Mandatory = $false)]
        [Int]
        $BackupRetentionPeriod,
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
        $CharacterSetName,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $CopyTagsToSnapshot,
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
        $DBClusterIdentifier,
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
        $DBInstanceClass,
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
        $DBInstanceIdentifier,
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
        $DBName,
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
        $DBParameterGroupName,
        [parameter(Mandatory = $false)]
        $DBSecurityGroups,
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
        $DBSnapshotIdentifier,
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
        $DBSubnetGroupName,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeleteAutomatedBackups,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeletionProtection,
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
        $Domain,
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
        $DomainIAMRoleName,
        [parameter(Mandatory = $false)]
        $EnableCloudwatchLogsExports,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $EnableIAMDatabaseAuthentication,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $EnablePerformanceInsights,
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
        $Engine,
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
        $EngineVersion,
        [parameter(Mandatory = $false)]
        [Int]
        $Iops,
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
        $KmsKeyId,
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
        $LicenseModel,
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
        $MasterUserPassword,
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
        $MasterUsername,
        [parameter(Mandatory = $false)]
        [Int]
        $MonitoringInterval,
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
        $MonitoringRoleArn,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $MultiAZ,
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
        $OptionGroupName,
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
        $PerformanceInsightsKMSKeyId,
        [parameter(Mandatory = $false)]
        [Int]
        $PerformanceInsightsRetentionPeriod,
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
        $Port,
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
        $PreferredBackupWindow,
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
        $PreferredMaintenanceWindow,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.RDS.DBInstance.ProcessorFeature"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProcessorFeatures,
        [parameter(Mandatory = $false)]
        [Int]
        $PromotionTier,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $PubliclyAccessible,
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
        $SourceDBInstanceIdentifier,
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
        $SourceRegion,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $StorageEncrypted,
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
        $StorageType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Tag","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags,
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
        $Timezone,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $UseDefaultProcessorFeatures,
        [parameter(Mandatory = $false)]
        $VPCSecurityGroups,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::RDS::DBInstance"
        }
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                LogicalId {}
                DeletionPolicy {
                    $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
                }
                DependsOn {
                    $ResourceParams.Add("DependsOn",$DependsOn)
                }
                Metadata {
                    $ResourceParams.Add("Metadata",$Metadata)
                }
                UpdatePolicy {
                    $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
                }
                Condition {
                    $ResourceParams.Add("Condition",$Condition)
                }
                AssociatedRoles {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name AssociatedRoles -Value @($AssociatedRoles)
                }
                DBSecurityGroups {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name DBSecurityGroups -Value @($DBSecurityGroups)
                }
                EnableCloudwatchLogsExports {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name EnableCloudwatchLogsExports -Value @($EnableCloudwatchLogsExports)
                }
                ProcessorFeatures {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name ProcessorFeatures -Value @($ProcessorFeatures)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                VPCSecurityGroups {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name VPCSecurityGroups -Value @($VPCSecurityGroups)
                }
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters[$key]
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RDS.DBInstance'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
