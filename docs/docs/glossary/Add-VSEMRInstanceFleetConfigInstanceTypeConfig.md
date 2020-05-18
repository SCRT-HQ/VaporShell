# Add-VSEMRInstanceFleetConfigInstanceTypeConfig

## SYNOPSIS
Adds an AWS::EMR::InstanceFleetConfig.InstanceTypeConfig resource property to the template.
InstanceType config is a subproperty of InstanceFleetConfig.
An instance type configuration specifies each instance type in an instance fleet.
The configuration determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities.
There can be a maximum of 5 instance type configurations in a fleet.

## SYNTAX

```
Add-VSEMRInstanceFleetConfigInstanceTypeConfig [[-BidPrice] <Object>]
 [[-BidPriceAsPercentageOfOnDemandPrice] <Object>] [[-Configurations] <Object>] [[-EbsConfiguration] <Object>]
 [-InstanceType] <Object> [[-WeightedCapacity] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceFleetConfig.InstanceTypeConfig resource property to the template.
InstanceType config is a subproperty of InstanceFleetConfig.
An instance type configuration specifies each instance type in an instance fleet.
The configuration determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities.
There can be a maximum of 5 instance type configurations in a fleet.

**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

## PARAMETERS

### -BidPrice
The bid price for each EC2 Spot instance type as defined by InstanceType.
Expressed in USD.
If neither BidPrice nor BidPriceAsPercentageOfOnDemandPrice is provided, BidPriceAsPercentageOfOnDemandPrice defaults to 100%.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-bidprice
PrimitiveType: String
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

### -BidPriceAsPercentageOfOnDemandPrice
The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by InstanceType.
Expressed as a number for example, 20 specifies 20%.
If neither BidPrice nor BidPriceAsPercentageOfOnDemandPrice is provided, BidPriceAsPercentageOfOnDemandPrice defaults to 100%.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-bidpriceaspercentageofondemandprice
PrimitiveType: Double
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

### -Configurations
Amazon EMR releases 4.x or later.
An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR.
A configuration consists of a classification, properties, and optional nested configurations.
A classification refers to an application-specific configuration file.
Properties are the settings you want to change in that file.
For more information, see Configuring Applications: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-configurations
DuplicatesAllowed: False
ItemType: Configuration
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

### -EbsConfiguration
The configuration of Amazon Elastic Block Storage EBS attached to each instance as defined by InstanceType.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-ebsconfiguration
Type: EbsConfiguration
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
An EC2 instance type, such as m3.xlarge.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-instancetype
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

### -WeightedCapacity
The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in InstanceFleetConfig.
This value is 1 for a master instance fleet, and must be 1 or greater for core and task instance fleets.
Defaults to 1 if not specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-weightedcapacity
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceTypeConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html)

