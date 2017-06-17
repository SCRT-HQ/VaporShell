---
layout: glossary
title: Add-VSRoute53RecordSetGroupAliasTarget
categories: glossary
---

# Add-VSRoute53RecordSetGroupAliasTarget

## SYNOPSIS
Adds an AWS::Route53::RecordSetGroup.AliasTarget resource property to the template

## SYNTAX

```
Add-VSRoute53RecordSetGroupAliasTarget [-DNSName] <Object> [[-EvaluateTargetHealth] <Boolean>]
 [-HostedZoneId] <Object>
```

## DESCRIPTION
Adds an AWS::Route53::RecordSetGroup.AliasTarget resource property to the template

## PARAMETERS

### -DNSName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-dnshostname    
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

### -EvaluateTargetHealth
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-evaluatetargethealth    
PrimitiveType: Boolean    
Required: False    
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

### -HostedZoneId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid    
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53.RecordSetGroup.AliasTarget

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html)

