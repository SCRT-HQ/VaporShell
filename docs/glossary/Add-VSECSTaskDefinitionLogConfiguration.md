---
layout: glossary
title: Add-VSECSTaskDefinitionLogConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSECSTaskDefinitionLogConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.LogConfiguration resource property to the template

## SYNTAX

```
Add-VSECSTaskDefinitionLogConfiguration [-LogDriver] <Object> [[-Options] <Hashtable>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.LogConfiguration resource property to the template

## PARAMETERS

### -LogDriver
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-logdriver    
PrimitiveType: String    
Required: True    
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

### -Options
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-options    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: False    
Type: Map    
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.LogConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html)

