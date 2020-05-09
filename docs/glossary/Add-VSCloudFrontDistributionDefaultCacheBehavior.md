# Add-VSCloudFrontDistributionDefaultCacheBehavior

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.DefaultCacheBehavior resource property to the template.
A complex type that describes the default cache behavior if you don't specify a CacheBehavior element or if files don't match any of the values of PathPattern in CacheBehavior elements.
You must create exactly one default cache behavior.

## SYNTAX

```
Add-VSCloudFrontDistributionDefaultCacheBehavior [[-Compress] <Object>]
 [[-LambdaFunctionAssociations] <Object>] [-TargetOriginId] <Object> [-ViewerProtocolPolicy] <Object>
 [[-TrustedSigners] <Object>] [[-DefaultTTL] <Object>] [[-FieldLevelEncryptionId] <Object>]
 [[-AllowedMethods] <Object>] [[-CachedMethods] <Object>] [[-SmoothStreaming] <Object>]
 [-ForwardedValues] <Object> [[-MinTTL] <Object>] [[-MaxTTL] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.DefaultCacheBehavior resource property to the template.
A complex type that describes the default cache behavior if you don't specify a CacheBehavior element or if files don't match any of the values of PathPattern in CacheBehavior elements.
You must create exactly one default cache behavior.

## PARAMETERS

### -Compress
Whether you want CloudFront to automatically compress certain files for this cache behavior.
If so, specify true; if not, specify false.
For more information, see Serving Compressed Files: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-compress
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

### -LambdaFunctionAssociations
A complex type that contains zero or more Lambda function associations for a cache behavior.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-lambdafunctionassociations
ItemType: LambdaFunctionAssociation
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

### -TargetOriginId
The value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior in your distribution.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-targetoriginid
PrimitiveType: String
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

### -ViewerProtocolPolicy
The protocol that viewers can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern.
You can specify the following options:
+  allow-all: Viewers can use HTTP or HTTPS.
+  redirect-to-https: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 Moved Permanently to the viewer along with the HTTPS URL.
The viewer then resubmits the request using the new URL.
+  https-only: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 Forbidden.
For more information about requiring the HTTPS protocol, see Using an HTTPS Connection to Access Your Objects: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html in the *Amazon CloudFront Developer Guide*.
The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object.
If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic.
That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously.
For more information, see Managing How Long Content Stays in an Edge Cache Expiration: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-viewerprotocolpolicy
PrimitiveType: String
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

### -TrustedSigners
Specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.
If you want to require signed URLs in requests for objects in the target origin, specify a list of AWS account IDs.
For more information, see Serving Private Content through CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html in the * Amazon CloudFront Developer Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-trustedsigners
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

### -DefaultTTL
The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated.
The value that you specify applies only when your origin does not add HTTP headers such as Cache-Control max-age, Cache-Control s-maxage, and Expires to objects.
For more information, see Managing How Long Content Stays in an Edge Cache Expiration: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-defaultttl
PrimitiveType: Double
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

### -FieldLevelEncryptionId
The value of ID for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for a cache behavior or for the default cache behavior in your distribution.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-fieldlevelencryptionid
PrimitiveType: String
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

### -AllowedMethods
A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
There are three choices:
+ CloudFront forwards only GET and HEAD requests.
+ CloudFront forwards only GET, HEAD, and OPTIONS requests.
+ CloudFront forwards GET, HEAD, OPTIONS, PUT, PATCH, POST, and DELETE requests.
If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to.
For example, you might not want users to have permissions to delete objects from your origin.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-allowedmethods
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CachedMethods
A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods.
There are two choices:
+ CloudFront caches responses to GET and HEAD requests.
+ CloudFront caches responses to GET, HEAD, and OPTIONS requests.
If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-cachedmethods
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SmoothStreaming
Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior.
If so, specify true; if not, specify false.
If you specify true for SmoothStreaming, you can still distribute other content using this cache behavior if the content matches the value of PathPattern.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-smoothstreaming
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardedValues
A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.

Type: ForwardedValues
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-forwardedvalues
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinTTL
The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated.
For more information, see Managing How Long Content Stays in an Edge Cache Expiration: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html in the *Amazon CloudFront Developer Guide*.
You must specify 0 for MinTTL if you configure CloudFront to forward all headers to your origin under Headers, if you specify 1 for Quantity and * for Name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-minttl
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxTTL
The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated.
The value that you specify applies only when your origin adds HTTP headers such as Cache-Control max-age, Cache-Control s-maxage, and Expires to objects.
For more information, see Managing How Long Content Stays in an Edge Cache Expiration: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-maxttl
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.DefaultCacheBehavior
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html)

