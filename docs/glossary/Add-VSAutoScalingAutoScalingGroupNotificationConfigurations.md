---
layout: glossary
title: Add-VSAutoScalingAutoScalingGroupNotificationConfigurations
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSAutoScalingAutoScalingGroupNotificationConfigurations

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfigurations resource property to the template

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupNotificationConfigurations [[-NotificationTypes] <Object>]
 [-TopicARN] <Object>
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfigurations resource property to the template

## PARAMETERS

### -NotificationTypes
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes    
DuplicatesAllowed: True    
PrimitiveItemType: String    
Required: False    
Type: List    
UpdateType: Mutable

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

### -TopicARN
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn    
PrimitiveType: String    
Required: True    
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

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfigurations

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html)

