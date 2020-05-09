# Add-VSSyntheticsCanaryVPCConfig

## SYNOPSIS
Adds an AWS::Synthetics::Canary.VPCConfig resource property to the template.
If this canary is to test an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint.
For more information, see  Running a Canary in a VPC: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html.

## SYNTAX

```
Add-VSSyntheticsCanaryVPCConfig [[-VpcId] <Object>] [-SubnetIds] <Object> [-SecurityGroupIds] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Synthetics::Canary.VPCConfig resource property to the template.
If this canary is to test an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint.
For more information, see  Running a Canary in a VPC: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html.

## PARAMETERS

### -VpcId
The IDs of the VPC where this canary is to run.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-vpcid
UpdateType: Mutable
PrimitiveType: String

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

### -SubnetIds
The IDs of the subnets where this canary is to run.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-subnetids
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -SecurityGroupIds
The IDs of the security groups for this canary.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-securitygroupids
UpdateType: Mutable
Type: List
PrimitiveItemType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Synthetics.Canary.VPCConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html)

