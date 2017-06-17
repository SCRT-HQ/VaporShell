---
layout: pagenodesc
title: Add-VSS3BucketRoutingRule
category: glossary
---

# Add-VSS3BucketRoutingRule

## SYNOPSIS
Adds an AWS::S3::Bucket.RoutingRule resource property to the template

## SYNTAX

```
Add-VSS3BucketRoutingRule [-RedirectRule] <Object> [[-RoutingRuleCondition] <Object>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.RoutingRule resource property to the template

## PARAMETERS

### -RedirectRule
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-redirectrule
Required: True
Type: RedirectRule
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

### -RoutingRuleCondition
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition
Required: False
Type: RoutingRuleCondition
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.RoutingRule

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)

