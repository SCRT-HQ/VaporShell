# Add-VSElastiCacheReplicationGroupNodeGroupConfiguration

## SYNOPSIS
Adds an AWS::ElastiCache::ReplicationGroup.NodeGroupConfiguration resource property to the template.
NodeGroupConfiguration is a property of the AWS::ElastiCache::ReplicationGroup resource that configures an Amazon ElastiCache (ElastiCache Redis cluster node group.

## SYNTAX

```
Add-VSElastiCacheReplicationGroupNodeGroupConfiguration [[-NodeGroupId] <Object>]
 [[-PrimaryAvailabilityZone] <Object>] [[-ReplicaAvailabilityZones] <Object>] [[-ReplicaCount] <Int32>]
 [[-Slots] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElastiCache::ReplicationGroup.NodeGroupConfiguration resource property to the template.
NodeGroupConfiguration is a property of the AWS::ElastiCache::ReplicationGroup resource that configures an Amazon ElastiCache (ElastiCache Redis cluster node group.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -NodeGroupId
Either the ElastiCache for Redis supplied 4-digit id or a user supplied id for the node group these configuration values apply to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-nodegroupid
PrimitiveType: String
UpdateType: Conditional

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

### -PrimaryAvailabilityZone
The Availability Zone where the primary node of this node group shard is launched.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-primaryavailabilityzone
PrimitiveType: String
UpdateType: Immutable

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

### -ReplicaAvailabilityZones
A list of Availability Zones to be used for the read replicas.
The number of Availability Zones in this list must match the value of ReplicaCount or ReplicasPerNodeGroup if not specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicaavailabilityzones
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -ReplicaCount
The number of read replica nodes in this node group shard.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Slots
A string of comma-separated values where the first set of values are the slot numbers zero based, and the second set of values are the keyspaces for each slot.
The following example specifies three slots numbered 0, 1, and 2:  0,1,2,0-4999,5000-9999,10000-16,383.
If you don't specify a value, ElastiCache allocates keys equally among each slot.
When you use an UseOnlineResharding update policy to update the number of node groups without interruption, ElastiCache evenly distributes the keyspaces between the specified number of slots.
This cannot be updated later.
Therefore, after updating the number of node groups in this way, you should remove the value specified for the Slots property of each NodeGroupConfiguration from the stack template, as it no longer reflects the actual values in each node group.
For more information, see UseOnlineResharding Policy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-useonlineresharding.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElastiCache.ReplicationGroup.NodeGroupConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html)

