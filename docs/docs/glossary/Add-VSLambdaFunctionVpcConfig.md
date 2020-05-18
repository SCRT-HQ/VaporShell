# Add-VSLambdaFunctionVpcConfig

## SYNOPSIS
Adds an AWS::Lambda::Function.VpcConfig resource property to the template.
The VPC security groups and subnets that are attached to a Lambda function.
When you connect a function to a VPC, Lambda creates an elastic network interface for each combination of security group and subnet in the function's VPC configuration.
The function can only access resources and the internet through that VPC.
For more information, see VPC Settings: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html.

## SYNTAX

```
Add-VSLambdaFunctionVpcConfig [-SecurityGroupIds] <Object> [-SubnetIds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Function.VpcConfig resource property to the template.
The VPC security groups and subnets that are attached to a Lambda function.
When you connect a function to a VPC, Lambda creates an elastic network interface for each combination of security group and subnet in the function's VPC configuration.
The function can only access resources and the internet through that VPC.
For more information, see VPC Settings: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html.

**Note**

When you delete a function, AWS CloudFormation monitors the state of its network interfaces and waits for Lambda to delete them before proceeding.
If the VPC is defined in the same stack, the network interfaces need to be deleted by Lambda before AWS CloudFormation can delete the VPC's resources.

To monitor network interfaces, AWS CloudFormation needs the ec2:DescribeNetworkInterfaces permission.
It obtains this from the user or role that modifies the stack.
If you don't provide this permission, AWS CloudFormation does not wait for network interfaces to be deleted.

## PARAMETERS

### -SecurityGroupIds
A list of VPC security groups IDs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

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

### -SubnetIds
A list of VPC subnet IDs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

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

### Vaporshell.Resource.Lambda.Function.VpcConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html)

