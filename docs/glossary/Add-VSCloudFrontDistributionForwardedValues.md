---
layout: pagenodesc
title: Add-VSCloudFrontDistributionForwardedValues
category: glossary
---

# Add-VSCloudFrontDistributionForwardedValues

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

## SYNTAX

```
Add-VSCloudFrontDistributionForwardedValues [[-Cookies] <Object>] [[-Headers] <Object>]
 [-QueryString] <Boolean> [[-QueryStringCacheKeys] <Object>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template

## PARAMETERS

### -Cookies
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-cookies
Required: False
Type: Cookies
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

### -Headers
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-headers
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

### -QueryString
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystring
PrimitiveType: Boolean
Required: True
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryStringCacheKeys
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystringcachekeys
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.ForwardedValues

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html)

