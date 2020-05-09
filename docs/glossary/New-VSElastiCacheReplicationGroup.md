# New-VSElastiCacheReplicationGroup

## SYNOPSIS
Adds an AWS::ElastiCache::ReplicationGroup resource to the template.
The AWS::ElastiCache::ReplicationGroup resource creates an Amazon ElastiCache Redis replication group.
A replication group is a collection of cache clusters, where one of the clusters is a primary read-write cluster and the others are read-only replicas.

## SYNTAX

```
New-VSElastiCacheReplicationGroup [-LogicalId] <String> [-AtRestEncryptionEnabled <Object>]
 [-AuthToken <Object>] [-AutoMinorVersionUpgrade <Object>] [-AutomaticFailoverEnabled <Object>]
 [-CacheNodeType <Object>] [-CacheParameterGroupName <Object>] [-CacheSecurityGroupNames <Object>]
 [-CacheSubnetGroupName <Object>] [-Engine <Object>] [-EngineVersion <Object>] [-KmsKeyId <Object>]
 [-NodeGroupConfiguration <Object>] [-NotificationTopicArn <Object>] [-NumCacheClusters <Object>]
 [-NumNodeGroups <Object>] [-Port <Object>] [-PreferredCacheClusterAZs <Object>]
 [-PreferredMaintenanceWindow <Object>] [-PrimaryClusterId <Object>] [-ReplicasPerNodeGroup <Object>]
 -ReplicationGroupDescription <Object> [-ReplicationGroupId <Object>] [-SecurityGroupIds <Object>]
 [-SnapshotArns <Object>] [-SnapshotName <Object>] [-SnapshotRetentionLimit <Object>]
 [-SnapshotWindow <Object>] [-SnapshottingClusterId <Object>] [-Tags <Object>]
 [-TransitEncryptionEnabled <Object>] [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>]
 [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElastiCache::ReplicationGroup resource to the template.
The AWS::ElastiCache::ReplicationGroup resource creates an Amazon ElastiCache Redis replication group.
A replication group is a collection of cache clusters, where one of the clusters is a primary read-write cluster and the others are read-only replicas.

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

### -AtRestEncryptionEnabled
A flag that enables encryption at rest when set to true.
You cannot modify the value of AtRestEncryptionEnabled after the replication group is created.
To enable encryption at rest on a replication group you must set AtRestEncryptionEnabled to true when you create the replication group.
**Required:** Only available when creating a replication group in an Amazon VPC using redis version 3.2.6 or 4.x onward.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-atrestencryptionenabled
PrimitiveType: Boolean
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

### -AuthToken
**Reserved parameter.** The password used to access a password protected server.
AuthToken can be specified only on replication groups where TransitEncryptionEnabled is true.
For HIPAA compliance, you must specify TransitEncryptionEnabled as true, an AuthToken, and a CacheSubnetGroup.
Password constraints:
+ Must be only printable ASCII characters.
+ Must be at least 16 characters and no more than 128 characters in length.
+ The only permitted printable special characters are !, &, #, $, ^, \<, \>, and -.
Other printable special characters cannot be used in the AUTH token.
For more information, see AUTH password: http://redis.io/commands/AUTH at http://redis.io/commands/AUTH.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-authtoken
PrimitiveType: String
UpdateType: Conditional

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

### -AutoMinorVersionUpgrade
This parameter is currently disabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-autominorversionupgrade
PrimitiveType: Boolean
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

### -AutomaticFailoverEnabled
Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.
If true, Multi-AZ is enabled for this replication group.
If false, Multi-AZ is disabled for this replication group.
AutomaticFailoverEnabled must be enabled for Redis cluster mode enabled replication groups.
Default: false
Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:
+ Redis versions earlier than 2.8.6.
+ Redis cluster mode disabled: T1 node types.
+ Redis cluster mode enabled: T1 node types.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-automaticfailoverenabled
PrimitiveType: Boolean
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

### -CacheNodeType
The compute and memory capacity of the nodes in the node group shard.
The following node types are supported by ElastiCache.
Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.
Changing the CacheNodeType of a Memcached instance is currently not supported.
If you need to scale using Memcached, we recommend forcing a replacement update by changing the LogicalResourceId of the resource.
+ General purpose:
+ Current generation:
**M5 node types:** cache.m5.large, cache.m5.xlarge, cache.m5.2xlarge, cache.m5.4xlarge, cache.m5.12xlarge, cache.m5.24xlarge
**M4 node types:** cache.m4.large, cache.m4.xlarge, cache.m4.2xlarge, cache.m4.4xlarge, cache.m4.10xlarge
**T3 node types:** cache.t3.micro, cache.t3.small, cache.t3.medium
**T2 node types:** cache.t2.micro, cache.t2.small, cache.t2.medium
+ Previous generation: not recommended
**T1 node types:** cache.t1.micro
**M1 node types:** cache.m1.small, cache.m1.medium, cache.m1.large, cache.m1.xlarge
**M3 node types:** cache.m3.medium, cache.m3.large, cache.m3.xlarge, cache.m3.2xlarge
+ Compute optimized:
+ Previous generation: not recommended
**C1 node types:** cache.c1.xlarge
+ Memory optimized:
+ Current generation:
**R5 node types:** cache.r5.large, cache.r5.xlarge, cache.r5.2xlarge, cache.r5.4xlarge, cache.r5.12xlarge, cache.r5.24xlarge
**R4 node types:** cache.r4.large, cache.r4.xlarge, cache.r4.2xlarge, cache.r4.4xlarge, cache.r4.8xlarge, cache.r4.16xlarge
+ Previous generation: not recommended
**M2 node types:** cache.m2.xlarge, cache.m2.2xlarge, cache.m2.4xlarge
**R3 node types:** cache.r3.large, cache.r3.xlarge, cache.r3.2xlarge, cache.r3.4xlarge, cache.r3.8xlarge

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachenodetype
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

### -CacheParameterGroupName
The name of the parameter group to associate with this replication group.
If this argument is omitted, the default cache parameter group for the specified engine is used.
If you are restoring to an engine version that is different than the original, you must specify the default version of that version.
For example, CacheParameterGroupName=default.redis4.0.
If you are running Redis version 3.2.4 or later, only one node group shard, and want to use a default parameter group, we recommend that you specify the parameter group by name.
+ To create a Redis cluster mode disabled replication group, use CacheParameterGroupName=default.redis3.2.
+ To create a Redis cluster mode enabled replication group, use CacheParameterGroupName=default.redis3.2.cluster.on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cacheparametergroupname
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

### -CacheSecurityGroupNames
A list of cache security group names to associate with this replication group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesecuritygroupnames
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

### -CacheSubnetGroupName
The name of the cache subnet group to be used for the replication group.
If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster.
For more information, see Subnets and Subnet Groups: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesubnetgroupname
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

### -Engine
The name of the cache engine to be used for the clusters in this replication group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engine
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
The version number of the cache engine to be used for the clusters in this replication group.
To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.
**Important:** You can upgrade to a newer engine version see Selecting a Cache Engine and Version: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement in the *ElastiCache User Guide*, but you cannot downgrade to an earlier engine version.
If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engineversion
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

### -KmsKeyId
The ID of the KMS key used to encrypt the disk on the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-kmskeyid
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

### -NodeGroupConfiguration
NodeGroupConfiguration  is a property of the AWS::ElastiCache::ReplicationGroup resource that configures an Amazon ElastiCache ElastiCache Redis cluster node group.
If you set UseOnlineResharding: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-useonlineresharding to true, you can update NodeGroupConfiguration without interruption.
When UseOnlineResharding is set to false, or is not specified, updating NodeGroupConfiguration results in replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-nodegroupconfiguration
DuplicatesAllowed: False
ItemType: NodeGroupConfiguration
Type: List
UpdateType: Conditional

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

### -NotificationTopicArn
The Amazon Resource Name ARN of the Amazon Simple Notification Service SNS topic to which notifications are sent.
The Amazon SNS topic owner must be the same as the cluster owner.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-notificationtopicarn
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

### -NumCacheClusters
The number of clusters this replication group initially has.
This parameter is not used if there is more than one node group shard.
You should use ReplicasPerNodeGroup instead.
If AutomaticFailoverEnabled is true, the value of this parameter must be at least 2.
If AutomaticFailoverEnabled is false you can omit this parameter it will default to 1, or you can explicitly set it to a value between 2 and 6.
The maximum permitted value for NumCacheClusters is 6 1 primary plus 5 replicas.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numcacheclusters
PrimitiveType: Integer
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

### -NumNodeGroups
An optional parameter that specifies the number of node groups shards for this Redis cluster mode enabled replication group.
For Redis cluster mode disabled either omit this parameter or set it to 1.
If you set UseOnlineResharding: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-useonlineresharding to true, you can update NumNodeGroups without interruption.
When UseOnlineResharding is set to false, or is not specified, updating NumNodeGroups results in replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.
Default: 1

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numnodegroups
PrimitiveType: Integer
UpdateType: Conditional

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
The port number on which each member of the replication group accepts connections.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-port
PrimitiveType: Integer
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

### -PreferredCacheClusterAZs
A list of EC2 Availability Zones in which the replication group's clusters are created.
The order of the Availability Zones in the list is the order in which clusters are allocated.
The primary cluster is created in the first AZ in the list.
This parameter is not used if there is more than one node group shard.
You should use NodeGroupConfiguration instead.
If you are creating your replication group in an Amazon VPC recommended, you can only locate clusters in Availability Zones associated with the subnets in the selected subnet group.
The number of Availability Zones listed must equal the value of NumCacheClusters.
Default: system chosen Availability Zones.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredcacheclusterazs
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

### -PreferredMaintenanceWindow
Specifies the weekly time range during which maintenance on the cluster is performed.
It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi 24H Clock UTC.
The minimum maintenance window is a 60 minute period.
Valid values for ddd are:
Specifies the weekly time range during which maintenance on the cluster is performed.
It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi 24H Clock UTC.
The minimum maintenance window is a 60 minute period.
Valid values for ddd are:
+  sun
+  mon
+  tue
+  wed
+  thu
+  fri
+  sat
Example: sun:23:00-mon:01:30

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredmaintenancewindow
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

### -PrimaryClusterId
The identifier of the cluster that serves as the primary for this replication group.
This cluster must already exist and have a status of available.
This parameter is not required if NumCacheClusters, NumNodeGroups, or ReplicasPerNodeGroup is specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-primaryclusterid
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

### -ReplicasPerNodeGroup
An optional parameter that specifies the number of replica nodes in each node group shard.
Valid values are 0 to 5.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicaspernodegroup
PrimitiveType: Integer
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

### -ReplicationGroupDescription
A user-created description for the replication group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupdescription
PrimitiveType: String
UpdateType: Mutable

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

### -ReplicationGroupId
The replication group identifier.
This parameter is stored as a lowercase string.
Constraints:
+ A name must contain from 1 to 40 alphanumeric characters or hyphens.
+ The first character must be a letter.
+ A name cannot end with a hyphen or contain two consecutive hyphens.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupid
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

### -SecurityGroupIds
One or more Amazon VPC security groups associated with this replication group.
Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud Amazon VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-securitygroupids
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

### -SnapshotArns
A list of Amazon Resource Names ARN that uniquely identify the Redis RDB snapshot files stored in Amazon S3.
The snapshot files are used to populate the new replication group.
The Amazon S3 object name in the ARN cannot contain any commas.
The new replication group will have the number of node groups console: shards specified by the parameter *NumNodeGroups* or the number of node groups configured by *NodeGroupConfiguration* regardless of the number of ARNs specified here.
Example of an Amazon S3 ARN: arn:aws:s3:::my_bucket/snapshot1.rdb

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotarns
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

### -SnapshotName
The name of a snapshot from which to restore data into the new replication group.
The snapshot status changes to restoring while the new replication group is being created.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotname
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

### -SnapshotRetentionLimit
The number of days for which ElastiCache retains automatic snapshots before deleting them.
For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.
Default: 0 i.e., automatic backups are disabled for this cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotretentionlimit
PrimitiveType: Integer
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

### -SnapshotWindow
The daily time range in UTC during which ElastiCache begins taking a daily snapshot of your node group shard.
Example: 05:00-09:00
If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotwindow
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

### -SnapshottingClusterId
The cluster ID that is used as the daily snapshot source for the replication group.
This parameter cannot be set for Redis cluster mode enabled replication groups.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshottingclusterid
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

### -Tags
A list of cost allocation tags to be added to this resource.
Tags are comma-separated key,value pairs e.g.
Key=myKey, Value=myKeyValue.
You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-tags
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

### -TransitEncryptionEnabled
A flag that enables in-transit encryption when set to true.
You cannot modify the value of TransitEncryptionEnabled after the cluster is created.
To enable in-transit encryption on a cluster you must set TransitEncryptionEnabled to true when you create a cluster.
This parameter is valid only if the Engine parameter is redis, the EngineVersion parameter is 3.2.6 or 4.x or 5.x, and the cluster is being created in an Amazon VPC.
If you enable in-transit encryption, you must also specify a value for CacheSubnetGroup.
**Required:** Only available when creating a replication group in an Amazon VPC using redis version 3.2.6 or 4.x onward.
Default: false
For HIPAA compliance, you must specify TransitEncryptionEnabled as true, an AuthToken, and a CacheSubnetGroup.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-transitencryptionenabled
PrimitiveType: Boolean
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

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

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

### Vaporshell.Resource.ElastiCache.ReplicationGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html)

