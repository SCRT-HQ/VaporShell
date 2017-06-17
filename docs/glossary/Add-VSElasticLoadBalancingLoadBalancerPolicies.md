---
layout: glossary
title: Add-VSElasticLoadBalancingLoadBalancerPolicies
categories: glossary
---

# Add-VSElasticLoadBalancingLoadBalancerPolicies

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.Policies resource property to the template

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerPolicies [-Attributes] <Object> [[-InstancePorts] <Object>]
 [[-LoadBalancerPorts] <Object>] [-PolicyName] <Object> [-PolicyType] <Object>
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.Policies resource property to the template

## PARAMETERS

### -Attributes
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-attributes    
DuplicatesAllowed: False    
PrimitiveItemType: Json    
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

### -InstancePorts
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-instanceports    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: False    
Type: List    
UpdateType: Mutable

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

### -LoadBalancerPorts
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-loadbalancerports    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: False    
Type: List    
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

### -PolicyName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policyname    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policytype    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.Policies

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html)

