# Add-VSElasticsearchDomainElasticsearchClusterConfig

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.ElasticsearchClusterConfig resource property to the template.
The cluster configuration for the Amazon ES domain.
You can specify options such as the instance type and the number of instances.
For more information, see Configuring Amazon ES Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains-configure-cluster-cli in the *Amazon Elasticsearch Service Developer Guide*.

## SYNTAX

```
Add-VSElasticsearchDomainElasticsearchClusterConfig [[-DedicatedMasterCount] <Int32>]
 [[-DedicatedMasterEnabled] <Boolean>] [[-DedicatedMasterType] <Object>] [[-InstanceCount] <Int32>]
 [[-InstanceType] <Object>] [[-ZoneAwarenessConfig] <Object>] [[-ZoneAwarenessEnabled] <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.ElasticsearchClusterConfig resource property to the template.
The cluster configuration for the Amazon ES domain.
You can specify options such as the instance type and the number of instances.
For more information, see Configuring Amazon ES Domains: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains-configure-cluster-cli in the *Amazon Elasticsearch Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DedicatedMasterCount
The number of instances to use for the master node.
If you specify this property, you must specify true for the DedicatedMasterEnabled property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastercount
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -DedicatedMasterEnabled
Indicates whether to use a dedicated master node for the Amazon ES domain.
A dedicated master node is a cluster node that performs cluster management tasks, but doesn't hold data or respond to data upload requests.
Dedicated master nodes offload cluster management tasks to increase the stability of your search clusters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmasterenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DedicatedMasterType
The hardware configuration of the computer that hosts the dedicated master node, such as m3.medium.elasticsearch.
If you specify this property, you must specify true for the DedicatedMasterEnabled property.
For valid values, see Supported Instance Types: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html in the *Amazon Elasticsearch Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastertype
PrimitiveType: String
UpdateType: Mutable

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

### -InstanceCount
The number of data nodes instances to use in the Amazon ES domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instancecount
PrimitiveType: Integer
UpdateType: Mutable

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

### -InstanceType
The instance type for your data nodes, such as m3.medium.elasticsearch.
For valid values, see Supported Instance Types: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html in the *Amazon Elasticsearch Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instnacetype
PrimitiveType: String
UpdateType: Mutable

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

### -ZoneAwarenessConfig
Specifies zone awareness configuration options.
Only required if ZoneAwarenessEnabled is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticsearchclusterconfig-zoneawarenessconfig
Type: ZoneAwarenessConfig
UpdateType: Mutable

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

### -ZoneAwarenessEnabled
Indicates whether to enable zone awareness for the Amazon ES domain.
When you enable zone awareness, Amazon ES allocates the nodes and replica index shards that belong to a cluster across two Availability Zones AZs in the same region to prevent data loss and minimize downtime in the event of node or data center failure.
Don't enable zone awareness if your cluster has no replica index shards or is a single-node cluster.
For more information, see Enabling Zone Awareness: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness in the *Amazon Elasticsearch Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-zoneawarenessenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Elasticsearch.Domain.ElasticsearchClusterConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html)

