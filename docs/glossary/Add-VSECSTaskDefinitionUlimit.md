---
layout: glossary
title: Add-VSECSTaskDefinitionUlimit
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSECSTaskDefinitionUlimit

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.Ulimit resource property to the template

## SYNTAX

```
Add-VSECSTaskDefinitionUlimit [-HardLimit] <Int32> [-Name] <Object> [-SoftLimit] <Int32>
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.Ulimit resource property to the template

## PARAMETERS

### -HardLimit
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-hardlimit    
PrimitiveType: Integer    
Required: True    
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-name    
PrimitiveType: String    
Required: True    
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

### -SoftLimit
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-softlimit    
PrimitiveType: Integer    
Required: True    
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### VaporShell.Resource.ECS.TaskDefinition.Ulimit

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html)

