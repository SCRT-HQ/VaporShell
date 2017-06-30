---
layout: glossary
title: Add-VSLambdaFunctionVpcConfig
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSLambdaFunctionVpcConfig

## SYNOPSIS
Adds an AWS::Lambda::Function.VpcConfig resource property to the template

## SYNTAX

```
Add-VSLambdaFunctionVpcConfig [-SecurityGroupIds] <Object> [-SubnetIds] <Object>
```

## DESCRIPTION
Adds an AWS::Lambda::Function.VpcConfig resource property to the template

## PARAMETERS

### -SecurityGroupIds
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: True    
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: True    
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.Function.VpcConfig

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html)

