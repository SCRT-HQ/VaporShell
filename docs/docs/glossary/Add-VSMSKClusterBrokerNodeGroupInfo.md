# Add-VSMSKClusterBrokerNodeGroupInfo

## SYNOPSIS
Adds an AWS::MSK::Cluster.BrokerNodeGroupInfo resource property to the template.
The setup to be used for brokers in the cluster.

## SYNTAX

```
Add-VSMSKClusterBrokerNodeGroupInfo [[-SecurityGroups] <Object>] [-ClientSubnets] <Object>
 [[-StorageInfo] <Object>] [[-BrokerAZDistribution] <Object>] [-InstanceType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.BrokerNodeGroupInfo resource property to the template.
The setup to be used for brokers in the cluster.

## PARAMETERS

### -SecurityGroups
The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster.
If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.
If you specify security groups that were shared with you, you must ensure that you have permissions to them.
Specifically, you need the ec2:DescribeSecurityGroups permission.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-securitygroups
UpdateType: Immutable

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

### -ClientSubnets
The list of subnets to connect to in the client virtual private cloud VPC.
AWS creates elastic network interfaces inside these subnets.
Client applications use elastic network interfaces to produce and consume data.
Specify exactly two subnets if you are using one of the following Regions: South America São Paulo, Canada Central, or US West N.
California.
For other Regions where Amazon MSK is available, you can specify either two or three subnets.
The subnets that you specify must be in distinct Availability Zones.
When you create a cluster, Amazon MSK distributes the broker nodes evenly across the subnets that you specify.
Client subnets can't be in Availability Zone us-east-1e.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-clientsubnets
UpdateType: Immutable

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

### -StorageInfo
Contains information about storage volumes attached to MSK broker nodes.

Type: StorageInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-storageinfo
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

### -BrokerAZDistribution
The distribution of broker nodes across Availability Zones.
This is an optional parameter.
If you don't specify it, Amazon MSK gives it the value DEFAULT.
You can also explicitly set this parameter to the value DEFAULT.
No other values are currently allowed.
Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets that you provide when you create the cluster.
To create a cluster, specify exactly two subnets if you are using one of the following Regions: South America São Paulo, Canada Central, or US West N.
California.
For other Regions where Amazon MSK is available, you can specify either two or three subnets.
The subnets that you specify must be in distinct Availability Zones.
Client subnets can't be in Availability Zone us-east-1e.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-brokerazdistribution
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

### -InstanceType
The type of Amazon EC2 instances to use for brokers.
The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge, kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-instancetype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.BrokerNodeGroupInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html)

