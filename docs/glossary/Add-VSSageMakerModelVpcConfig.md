# Add-VSSageMakerModelVpcConfig

## SYNOPSIS
Adds an AWS::SageMaker::Model.VpcConfig resource property to the template.
Specifies a VPC that your training jobs and hosted models have access to.
Control access to and from your training and model containers by configuring the VPC.
For more information, see Protect Endpoints by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html and Protect Training Jobs by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html.

## SYNTAX

```
Add-VSSageMakerModelVpcConfig [-Subnets] <Object> [-SecurityGroupIds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::Model.VpcConfig resource property to the template.
Specifies a VPC that your training jobs and hosted models have access to.
Control access to and from your training and model containers by configuring the VPC.
For more information, see Protect Endpoints by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html and Protect Training Jobs by Using an Amazon Virtual Private Cloud: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html.

## PARAMETERS

### -Subnets
The ID of the subnets in the VPC to which you want to connect your training job or model.
For information about the availability of specific instance types, see Supported Instance Types and Availability Zones: https://docs.aws.amazon.com/sagemaker/latest/dg/instance-types-az.html.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-subnets
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecurityGroupIds
The VPC security group IDs, in the form sg-xxxxxxxx.
Specify the security groups for the VPC that is specified in the Subnets field.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-securitygroupids
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.Model.VpcConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html)

