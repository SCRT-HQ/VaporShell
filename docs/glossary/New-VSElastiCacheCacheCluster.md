# New-VSElastiCacheCacheCluster

## SYNOPSIS
Adds an AWS::ElastiCache::CacheCluster resource to the template.
The AWS::ElastiCache::CacheCluster type creates an Amazon ElastiCache cache cluster.

## SYNTAX

```
New-VSElastiCacheCacheCluster [-LogicalId] <String> [-AZMode <Object>] [-AutoMinorVersionUpgrade <Boolean>]
 -CacheNodeType <Object> [-CacheParameterGroupName <Object>] [-CacheSecurityGroupNames <Object>]
 [-CacheSubnetGroupName <Object>] [-ClusterName <Object>] -Engine <Object> [-EngineVersion <Object>]
 [-NotificationTopicArn <Object>] -NumCacheNodes <Int32> [-Port <Int32>] [-PreferredAvailabilityZone <Object>]
 [-PreferredAvailabilityZones <Object>] [-PreferredMaintenanceWindow <Object>] [-SnapshotArns <Object>]
 [-SnapshotName <Object>] [-SnapshotRetentionLimit <Int32>] [-SnapshotWindow <Object>] [-Tags <Object>]
 [-VpcSecurityGroupIds <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElastiCache::CacheCluster resource to the template.
The AWS::ElastiCache::CacheCluster type creates an Amazon ElastiCache cache cluster.

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

### -AZMode
Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region.
This parameter is only supported for Memcached clusters.
If the AZMode and PreferredAvailabilityZones are not specified, ElastiCache assumes single-az mode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-azmode
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-autominorversionupgrade
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

### -CacheNodeType
The compute and memory capacity of the nodes in the node group shard.
The following node types are supported by ElastiCache.
Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.
+ General purpose:
+ Current generation:
**M5 node types:** cache.m5.large, cache.m5.xlarge, cache.m5.2xlarge, cache.m5.4xlarge, cache.m5.12xlarge, cache.m5.24xlarge
**M4 node types:** cache.m4.large, cache.m4.xlarge, cache.m4.2xlarge, cache.m4.4xlarge, cache.m4.10xlarge
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
**Additional node type info**
+ All current generation instance types are created in Amazon VPC by default.
+ Redis append-only files AOF are not supported for T1 or T2 instances.
+ Redis Multi-AZ with automatic failover is not supported on T1 instances.
+ Redis configuration variables appendonly and appendfsync are not supported on Redis version 2.8.22 and later.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachenodetype
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

### -CacheParameterGroupName
The name of the parameter group to associate with this cluster.
If this argument is omitted, the default parameter group for the specified engine is used.
You cannot use any parameter group which has cluster-enabled='yes' when creating a cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cacheparametergroupname
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
A list of security group names to associate with this cluster.
Use this parameter only when you are creating a cluster outside of an Amazon Virtual Private Cloud Amazon VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesecuritygroupnames
DuplicatesAllowed: True
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
The name of the subnet group to be used for the cluster.
Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud Amazon VPC.
If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster.
For more information, see Subnets and Subnet Groups: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesubnetgroupname
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

### -ClusterName
A name for the cache cluster.
If you don't specify a name, AWSCloudFormation generates a unique physical ID and uses that ID for the cache cluster.
For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html.
The name must contain 1 to 20 alphanumeric characters or hyphens.
The name must start with a letter and cannot end with a hyphen or contain two consecutive hyphens.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-clustername
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
The name of the cache engine to be used for this cluster.
Valid values for this parameter are: memcached | redis

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engine
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

### -EngineVersion
The version number of the cache engine to be used for this cluster.
To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.
**Important:** You can upgrade to a newer engine version see Selecting a Cache Engine and Version: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement, but you cannot downgrade to an earlier engine version.
If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engineversion
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

### -NotificationTopicArn
The Amazon Resource Name ARN of the Amazon Simple Notification Service SNS topic to which notifications are sent.
The Amazon SNS topic owner must be the same as the cluster owner.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-notificationtopicarn
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

### -NumCacheNodes
The number of cache nodes that the cache cluster should have.
However, if the PreferredAvailabilityZone and PreferredAvailabilityZones properties were not previously specified and you don't specify any new values, an update requires  replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-numcachenodes
PrimitiveType: Integer
UpdateType: Conditional

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
The port number on which each of the cache nodes accepts connections.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-port
PrimitiveType: Integer
UpdateType: Immutable

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

### -PreferredAvailabilityZone
The EC2 Availability Zone in which the cluster is created.
All nodes belonging to this Memcached cluster are placed in the preferred Availability Zone.
If you want to create your nodes across multiple Availability Zones, use PreferredAvailabilityZones.
Default: System chosen Availability Zone.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzone
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

### -PreferredAvailabilityZones
A list of the Availability Zones in which cache nodes are created.
The order of the zones in the list is not important.
This option is only supported on Memcached.
If you are creating your cluster in an Amazon VPC recommended you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.
The number of Availability Zones listed must equal the value of NumCacheNodes.
If you want all the nodes in the same Availability Zone, use PreferredAvailabilityZone instead, or repeat the Availability Zone multiple times in the list.
Default: System chosen Availability Zones.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzones
DuplicatesAllowed: False
PrimitiveItemType: String
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredmaintenancewindow
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

### -SnapshotArns
A single-element string list containing an Amazon Resource Name ARN that uniquely identifies a Redis RDB snapshot file stored in Amazon S3.
The snapshot file is used to populate the node group shard.
The Amazon S3 object name in the ARN cannot contain any commas.
This parameter is only valid if the Engine parameter is redis.
Example of an Amazon S3 ARN: arn:aws:s3:::my_bucket/snapshot1.rdb

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotarns
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
The name of a Redis snapshot from which to restore data into the new node group shard.
The snapshot status changes to restoring while the new node group shard is being created.
This parameter is only valid if the Engine parameter is redis.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotname
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
For example, if you set SnapshotRetentionLimit to 5, a snapshot taken today is retained for 5 days before being deleted.
This parameter is only valid if the Engine parameter is redis.
Default: 0 i.e., automatic backups are disabled for this cache cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotretentionlimit
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

### -SnapshotWindow
The daily time range in UTC during which ElastiCache begins taking a daily snapshot of your node group shard.
Example: 05:00-09:00
If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.
This parameter is only valid if the Engine parameter is redis.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotwindow
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-tags
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

### -VpcSecurityGroupIds
One or more VPC security groups associated with the cluster.
Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud Amazon VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-vpcsecuritygroupids
DuplicatesAllowed: True
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

### Vaporshell.Resource.ElastiCache.CacheCluster
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html)

