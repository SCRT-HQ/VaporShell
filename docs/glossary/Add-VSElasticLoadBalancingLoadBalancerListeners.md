---
layout: glossary
title: Add-VSElasticLoadBalancingLoadBalancerListeners
categories: glossary
---

# Add-VSElasticLoadBalancingLoadBalancerListeners

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.Listeners resource property to the template

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerListeners [-InstancePort] <Object> [[-InstanceProtocol] <Object>]
 [-LoadBalancerPort] <Object> [[-PolicyNames] <Object>] [-Protocol] <Object> [[-SSLCertificateId] <Object>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.Listeners resource property to the template

## PARAMETERS

### -InstancePort
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceport    
PrimitiveType: String    
Required: True    
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

### -InstanceProtocol
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceprotocol    
PrimitiveType: String    
Required: False    
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

### -LoadBalancerPort
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-loadbalancerport    
PrimitiveType: String    
Required: True    
UpdateType: Mutable

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

### -PolicyNames
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-policynames    
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-protocol    
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

### -SSLCertificateId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-sslcertificateid    
PrimitiveType: String    
Required: False    
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.Listeners

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html)

