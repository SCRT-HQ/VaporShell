# New-VSRedshiftCluster

## SYNOPSIS
Adds an AWS::Redshift::Cluster resource to the template.
Specifies a cluster.
A *cluster* is a fully managed data warehouse that consists of a set of compute nodes.

## SYNTAX

```
New-VSRedshiftCluster [-LogicalId] <String> [-AllowVersionUpgrade <Object>]
 [-AutomatedSnapshotRetentionPeriod <Object>] [-AvailabilityZone <Object>] [-ClusterIdentifier <Object>]
 [-ClusterParameterGroupName <Object>] [-ClusterSecurityGroups <Object>] [-ClusterSubnetGroupName <Object>]
 -ClusterType <Object> [-ClusterVersion <Object>] -DBName <Object> [-ElasticIp <Object>] [-Encrypted <Object>]
 [-HsmClientCertificateIdentifier <Object>] [-HsmConfigurationIdentifier <Object>] [-IamRoles <Object>]
 [-KmsKeyId <Object>] [-LoggingProperties <Object>] -MasterUserPassword <Object> -MasterUsername <Object>
 -NodeType <Object> [-NumberOfNodes <Object>] [-OwnerAccount <Object>] [-Port <Object>]
 [-PreferredMaintenanceWindow <Object>] [-PubliclyAccessible <Object>] [-SnapshotClusterIdentifier <Object>]
 [-SnapshotIdentifier <Object>] [-Tags <Object>] [-VpcSecurityGroupIds <Object>] [-DeletionPolicy <String>]
 [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Redshift::Cluster resource to the template.
Specifies a cluster.
A *cluster* is a fully managed data warehouse that consists of a set of compute nodes.

To create a cluster in Virtual Private Cloud (VPC, you must provide a cluster subnet group name.
The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster.
For more information about managing clusters, go to Amazon Redshift Clusters: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html in the *Amazon Redshift Cluster Management Guide*.

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

### -AllowVersionUpgrade
If true, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.
When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.
Default: true

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-allowversionupgrade
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

### -AutomatedSnapshotRetentionPeriod
The number of days that automated snapshots are retained.
If the value is 0, automated snapshots are disabled.
Even if automated snapshots are disabled, you can still create manual snapshots when you want with CreateClusterSnapshot.
Default: 1
Constraints: Must be a value from 0 to 35.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-automatedsnapshotretentionperiod
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

### -AvailabilityZone
The EC2 Availability Zone AZ in which you want Amazon Redshift to provision the cluster.
For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.
Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.
Example: us-east-2d
Constraint: The specified Availability Zone must be in the same region as the current endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-availabilityzone
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

### -ClusterIdentifier
A unique identifier for the cluster.
You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying.
The identifier also appears in the Amazon Redshift console.
Constraints:
+ Must contain from 1 to 63 alphanumeric characters or hyphens.
+ Alphabetic characters must be lowercase.
+ First character must be a letter.
+ Cannot end with a hyphen or contain two consecutive hyphens.
+ Must be unique for all clusters within an AWS account.
Example: myexamplecluster

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusteridentifier
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

### -ClusterParameterGroupName
The name of the parameter group to be associated with this cluster.
Default: The default Amazon Redshift cluster parameter group.
For information about the default parameter group, go to Working with Amazon Redshift Parameter Groups: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
Constraints:
+ Must be 1 to 255 alphanumeric characters or hyphens.
+ First character must be a letter.
+ Cannot end with a hyphen or contain two consecutive hyphens.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusterparametergroupname
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

### -ClusterSecurityGroups
A list of security groups to be associated with this cluster.
Default: The default cluster security group for Amazon Redshift.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustersecuritygroups
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

### -ClusterSubnetGroupName
The name of a cluster subnet group to be associated with this cluster.
If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustersubnetgroupname
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

### -ClusterType
The type of the cluster.
When cluster type is specified as
+  single-node, the **NumberOfNodes** parameter is not required.
+  multi-node, the **NumberOfNodes** parameter is required.
Valid Values: multi-node | single-node
Default: multi-node

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustertype
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

### -ClusterVersion
The version of the Amazon Redshift engine software that you want to deploy on the cluster.
The version selected runs on all the nodes in the cluster.
Constraints: Only version 1.0 is currently available.
Example: 1.0

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusterversion
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

### -DBName
The name of the first database to be created when the cluster is created.
To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database.
For more information, go to Create a Database: https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html in the Amazon Redshift Database Developer Guide.
Default: dev
Constraints:
+ Must contain 1 to 64 alphanumeric characters.
+ Must contain only lowercase letters.
+ Cannot be a word that is reserved by the service.
A list of reserved words can be found in Reserved Words: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html in the Amazon Redshift Database Developer Guide.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-dbname
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

### -ElasticIp
The Elastic IP EIP address for the cluster.
Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway.
For more information about provisioning clusters in EC2-VPC, go to Supported Platforms to Launch Your Cluster: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms in the Amazon Redshift Cluster Management Guide.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-elasticip
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

### -Encrypted
If true, the data in the cluster is encrypted at rest.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-encrypted
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

### -HsmClientCertificateIdentifier
Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-hsmclientcertidentifier
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

### -HsmConfigurationIdentifier
Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-HsmConfigurationIdentifier
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

### -IamRoles
A list of AWS Identity and Access Management IAM roles that can be used by the cluster to access other AWS services.
You must supply the IAM roles in their Amazon Resource Name ARN format.
You can supply up to 10 IAM roles in a single request.
A cluster can have up to 10 IAM roles associated with it at any time.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-iamroles
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

### -KmsKeyId
The AWS Key Management Service KMS key ID of the encryption key that you want to use to encrypt data in the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-kmskeyid
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

### -LoggingProperties
Specifies logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-loggingproperties
Type: LoggingProperties
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

### -MasterUserPassword
The password associated with the master user account for the cluster that is being created.
Constraints:
+ Must be between 8 and 64 characters in length.
+ Must contain at least one uppercase letter.
+ Must contain at least one lowercase letter.
+ Must contain one number.
+ Can be any printable ASCII character ASCII code 33 to 126 except ' single quote, " double quote, , /, @, or space.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-masteruserpassword
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

### -MasterUsername
The user name associated with the master user account for the cluster that is being created.
Constraints:
+ Must be 1 - 128 alphanumeric characters.
The user name can't be PUBLIC.
+ First character must be a letter.
+ Cannot be a reserved word.
A list of reserved words can be found in Reserved Words: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html in the Amazon Redshift Database Developer Guide.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-masterusername
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

### -NodeType
The node type to be provisioned for the cluster.
For information about node types, go to  Working with Clusters: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes in the *Amazon Redshift Cluster Management Guide*.
Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-nodetype
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

### -NumberOfNodes
The number of compute nodes in the cluster.
This parameter is required when the **ClusterType** parameter is specified as multi-node.
For information about determining how many nodes you need, go to  Working with Clusters: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes in the *Amazon Redshift Cluster Management Guide*.
If you don't specify this parameter, you get a single-node cluster.
When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.
Default: 1
Constraints: Value must be at least 1 and no more than 100.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-nodetype
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

### -OwnerAccount
The AWS customer account used to create or copy the snapshot.
Required if you are restoring a snapshot you do not own, optional if you own the snapshot.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-owneraccount
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
The port number on which the cluster accepts incoming connections.
The cluster is accessible only via the JDBC and ODBC connection strings.
Part of the connection string requires the port on which the cluster will listen for incoming connections.
Default: 5439
Valid Values: 1150-65535

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-port
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

### -PreferredMaintenanceWindow
The weekly time range in UTC during which automated cluster maintenance can occur.
Format: ddd:hh24:mi-ddd:hh24:mi
Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
For more information about the time blocks for each region, see Maintenance Windows: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows in Amazon Redshift Cluster Management Guide.
Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun
Constraints: Minimum 30-minute window.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-preferredmaintenancewindow
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

### -PubliclyAccessible
If true, the cluster can be accessed from a public network.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-publiclyaccessible
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

### -SnapshotClusterIdentifier
The name of the cluster the source snapshot was created from.
This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-snapshotclusteridentifier
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

### -SnapshotIdentifier
The name of the snapshot from which to create the new cluster.
This parameter isn't case sensitive.
Example: my-snapshot-id

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-snapshotidentifier
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

### -Tags
A list of tag instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-tags
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
A list of Virtual Private Cloud VPC security groups to be associated with the cluster.
Default: The default VPC security group is associated with the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-vpcsecuritygroupids
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

### Vaporshell.Resource.Redshift.Cluster
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html)

