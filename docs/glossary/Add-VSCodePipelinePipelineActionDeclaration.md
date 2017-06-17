---
layout: pagenodesc
title: Add-VSCodePipelinePipelineActionDeclaration
category: glossary
---

# Add-VSCodePipelinePipelineActionDeclaration

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.ActionDeclaration resource property to the template

## SYNTAX

```
Add-VSCodePipelinePipelineActionDeclaration [-ActionTypeId] <Object> [[-Configuration] <Object>]
 [[-InputArtifacts] <Object>] [-Name] <Object> [[-OutputArtifacts] <Object>] [[-RoleArn] <Object>]
 [[-RunOrder] <Int32>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.ActionDeclaration resource property to the template

## PARAMETERS

### -ActionTypeId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid
Required: True
Type: ActionTypeId
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

### -Configuration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-configuration
PrimitiveType: Json
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

### -InputArtifacts
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts
DuplicatesAllowed: False
ItemType: InputArtifact
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

### -Name
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-name
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

### -OutputArtifacts
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts
DuplicatesAllowed: False
ItemType: OutputArtifact
Required: False
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleArn
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-rolearn
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

### -RunOrder
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-runorder
PrimitiveType: Integer
Required: False
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodePipeline.Pipeline.ActionDeclaration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html)

