---
layout: glossary
title: Add-VSS3BucketWebsiteConfiguration
categories: glossary
---

# Add-VSS3BucketWebsiteConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.WebsiteConfiguration resource property to the template

## SYNTAX

```
Add-VSS3BucketWebsiteConfiguration [[-ErrorDocument] <Object>] [[-IndexDocument] <Object>]
 [[-RedirectAllRequestsTo] <Object>] [[-RoutingRules] <Object>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.WebsiteConfiguration resource property to the template

## PARAMETERS

### -ErrorDocument
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-errordocument    
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

### -IndexDocument
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-indexdocument    
PrimitiveType: String    
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

### -RedirectAllRequestsTo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-redirectallrequeststo    
Required: False    
Type: RedirectAllRequestsTo    
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

### -RoutingRules
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-routingrules    
DuplicatesAllowed: False    
ItemType: RoutingRule    
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

### Vaporshell.Resource.S3.Bucket.WebsiteConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html)

