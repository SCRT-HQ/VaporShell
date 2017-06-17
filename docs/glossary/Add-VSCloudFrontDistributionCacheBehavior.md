---
layout: pagenodesc
title: Add-VSCloudFrontDistributionCacheBehavior
category: glossary
---

# Add-VSCloudFrontDistributionCacheBehavior

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.CacheBehavior resource property to the template

## SYNTAX

```
Add-VSCloudFrontDistributionCacheBehavior [[-AllowedMethods] <Object>] [[-CachedMethods] <Object>]
 [[-Compress] <Boolean>] [[-DefaultTTL] <Object>] [-ForwardedValues] <Object> [[-MaxTTL] <Object>]
 [[-MinTTL] <Object>] [-PathPattern] <Object> [[-SmoothStreaming] <Boolean>] [-TargetOriginId] <Object>
 [[-TrustedSigners] <Object>] [-ViewerProtocolPolicy] <Object>
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.CacheBehavior resource property to the template

## PARAMETERS

### -AllowedMethods
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-allowedmethods
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
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CachedMethods
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-cachedmethods
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
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-compress
PrimitiveType: Boolean
Required: False
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultTTL
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-defaultttl
PrimitiveType: Long
Required: False
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

### -ForwardedValues
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-forwardedvalues
Required: True
Type: ForwardedValues
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

### -MaxTTL
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-maxttl
PrimitiveType: Long
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

### -MinTTL
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-minttl
PrimitiveType: Long
Required: False
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PathPattern
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-pathpattern
PrimitiveType: String
Required: True
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SmoothStreaming
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-smoothstreaming
PrimitiveType: Boolean
Required: False
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetOriginId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-targetoriginid
PrimitiveType: String
Required: True
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrustedSigners
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-trustedsigners
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
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ViewerProtocolPolicy
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-viewerprotocolpolicy
PrimitiveType: String
Required: True
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.CacheBehavior

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html)

