---
layout: pagenodesc
title: Add-VSCodePipelinePipelineStageDeclaration
category: glossary
---

# Add-VSCodePipelinePipelineStageDeclaration

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.StageDeclaration resource property to the template

## SYNTAX

```
Add-VSCodePipelinePipelineStageDeclaration [-Actions] <Object> [[-Blockers] <Object>] [-Name] <Object>
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.StageDeclaration resource property to the template

## PARAMETERS

### -Actions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
DuplicatesAllowed: False
ItemType: ActionDeclaration
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

### -Blockers
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
DuplicatesAllowed: False
ItemType: BlockerDeclaration
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

### -Name
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
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

### Vaporshell.Resource.CodePipeline.Pipeline.StageDeclaration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html)

