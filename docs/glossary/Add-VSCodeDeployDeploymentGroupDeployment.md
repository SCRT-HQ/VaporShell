---
layout: glossary
title: Add-VSCodeDeployDeploymentGroupDeployment
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSCodeDeployDeploymentGroupDeployment

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.Deployment resource property to the template

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupDeployment [[-Description] <Object>]
 [[-IgnoreApplicationStopFailures] <Boolean>] [-Revision] <Object>
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.Deployment resource property to the template

## PARAMETERS

### -Description
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description    
PrimitiveType: String    
Required: False    
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

### -IgnoreApplicationStopFailures
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures    
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

### -Revision
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision    
Required: True    
Type: RevisionLocation    
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.Deployment

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html)
