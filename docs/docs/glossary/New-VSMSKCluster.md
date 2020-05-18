# New-VSMSKCluster

## SYNOPSIS
Adds an AWS::MSK::Cluster resource to the template.
The AWS::MSK::Cluster resource creates an Amazon MSK cluster.
For more information, see What Is Amazon MSK?: https://docs.aws.amazon.com/msk/latest/developerguide/what-is-msk.html in the *Amazon MSK Developer Guide*.

## SYNTAX

```
New-VSMSKCluster [-LogicalId] <String> -BrokerNodeGroupInfo <Object> [-EnhancedMonitoring <Object>]
 -KafkaVersion <Object> -NumberOfBrokerNodes <Object> [-EncryptionInfo <Object>] [-OpenMonitoring <Object>]
 -ClusterName <Object> [-ClientAuthentication <Object>] [-LoggingInfo <Object>] [-Tags <Object>]
 [-ConfigurationInfo <Object>] [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>]
 [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster resource to the template.
The AWS::MSK::Cluster resource creates an Amazon MSK cluster.
For more information, see What Is Amazon MSK?: https://docs.aws.amazon.com/msk/latest/developerguide/what-is-msk.html in the *Amazon MSK Developer Guide*.

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

### -BrokerNodeGroupInfo
The setup to be used for brokers in the cluster.

Type: BrokerNodeGroupInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-brokernodegroupinfo
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

### -EnhancedMonitoring
Specifies the level of monitoring for the MSK cluster.
The possible values are DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-enhancedmonitoring
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

### -KafkaVersion
The version of Apache Kafka.
You can use Amazon MSK to create clusters that use Apache Kafka versions 1.1.1 and 2.2.1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-kafkaversion
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

### -NumberOfBrokerNodes
The number of broker nodes you want in the Amazon MSK cluster.
You can submit an update to increase the number of broker nodes in a cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-numberofbrokernodes
PrimitiveType: Integer
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

### -EncryptionInfo
Includes all encryption-related information.

Type: EncryptionInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-encryptioninfo
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

### -OpenMonitoring
The settings for open monitoring.

Type: OpenMonitoring
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-openmonitoring
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

### -ClusterName
The name of the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clustername
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

### -ClientAuthentication
Includes information related to client authentication.

Type: ClientAuthentication
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clientauthentication
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

### -LoggingInfo
You can configure your MSK cluster to send broker logs to different destination types.
This is a container for the configuration details related to broker logs.

Type: LoggingInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-logginginfo
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
A map of key:value pairs to apply to this resource.
Both key and value are of type String.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-tags
PrimitiveType: Json
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

### -ConfigurationInfo
The Amazon MSK configuration to use for the cluster.

Type: ConfigurationInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-configurationinfo
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

### Vaporshell.Resource.MSK.Cluster
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html)

