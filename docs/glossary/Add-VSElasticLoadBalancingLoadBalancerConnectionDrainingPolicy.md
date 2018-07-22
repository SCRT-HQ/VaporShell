---
layout: glossary
title: Add-VSElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-VSElasticLoadBalancingLoadBalancerConnectionDrainingPolicy

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy resource property to the template

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerConnectionDrainingPolicy [-Enabled] <Boolean> [[-Timeout] <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy resource property to the template

## PARAMETERS

### -Enabled
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled    
PrimitiveType: Boolean    
Required: True    
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout    
PrimitiveType: Integer    
Required: False    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionDrainingPolicy

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html)

