# Add-VSS3BucketPublicAccessBlockConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template.
The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket.
You can enable the configuration options in any combination.
For more information about when Amazon S3 considers a bucket or object public, see The Meaning of "Public": https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status in the Amazon Simple Storage Service Developer Guide.

## SYNTAX

```
Add-VSS3BucketPublicAccessBlockConfiguration [[-BlockPublicAcls] <Object>] [[-BlockPublicPolicy] <Object>]
 [[-IgnorePublicAcls] <Object>] [[-RestrictPublicBuckets] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template.
The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket.
You can enable the configuration options in any combination.
For more information about when Amazon S3 considers a bucket or object public, see The Meaning of "Public": https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status in the Amazon Simple Storage Service Developer Guide.

## PARAMETERS

### -BlockPublicAcls
Specifies whether Amazon S3 should block public access control lists ACLs for this bucket and objects in this bucket.
Setting this element to TRUE causes the following behavior:
+ PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
+ PUT Object calls fail if the request includes a public ACL.
+ PUT Bucket calls fail if the request includes a public ACL.
Enabling this setting doesn't affect existing policies or ACLs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicacls
PrimitiveType: Boolean
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

### -BlockPublicPolicy
Specifies whether Amazon S3 should block public bucket policies for this bucket.
Setting this element to TRUE causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy allows public access.
Enabling this setting doesn't affect existing bucket policies.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicpolicy
PrimitiveType: Boolean
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

### -IgnorePublicAcls
Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket.
Setting this element to TRUE causes Amazon S3 to ignore all public ACLs on this bucket and objects in this bucket.
Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-ignorepublicacls
PrimitiveType: Boolean
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

### -RestrictPublicBuckets
Specifies whether Amazon S3 should restrict public bucket policies for this bucket.
Setting this element to TRUE restricts access to this bucket to only AWS services and authorized users within this account if the bucket has a public policy.
Enabling this setting doesn't affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-restrictpublicbuckets
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.PublicAccessBlockConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html)

