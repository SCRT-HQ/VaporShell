---
layout: glossary
title: New-VSS3Box
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# New-VSS3Box

## SYNOPSIS
Creates a new bucket in S3.
Due to auto-generated resource functions already using the function name 'New-VSS3Bucket', this has been renamed to prevent collisions.

## SYNTAX

```
New-VSS3Box [-BucketName] <String> [-BucketRegionName <String>] [-CannedACL <String>] [-ProfileName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -BucketName
The name of the bucket to be created.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BucketRegionName
The bucket region locality expressed using the name of the region.
When set, this will determine where your data will reside in S3.
Valid values: us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CannedACL
The canned ACL to apply to the bucket.
Valid options are: "NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
