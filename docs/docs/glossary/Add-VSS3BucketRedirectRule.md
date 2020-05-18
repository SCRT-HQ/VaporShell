# Add-VSS3BucketRedirectRule

## SYNOPSIS
Adds an AWS::S3::Bucket.RedirectRule resource property to the template.
Specifies how requests are redirected.
In the event of an error, you can specify a different error code to return.

## SYNTAX

```
Add-VSS3BucketRedirectRule [[-HostName] <Object>] [[-HttpRedirectCode] <Object>] [[-Protocol] <Object>]
 [[-ReplaceKeyPrefixWith] <Object>] [[-ReplaceKeyWith] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.RedirectRule resource property to the template.
Specifies how requests are redirected.
In the event of an error, you can specify a different error code to return.

## PARAMETERS

### -HostName
The host name to use in the redirect request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-hostname
PrimitiveType: String
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

### -HttpRedirectCode
The HTTP redirect code to use on the response.
Not required if one of the siblings is present.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-httpredirectcode
PrimitiveType: String
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

### -Protocol
Protocol to use when redirecting requests.
The default is the protocol that is used in the original request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-protocol
PrimitiveType: String
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

### -ReplaceKeyPrefixWith
The object key prefix to use in the redirect request.
For example, to redirect requests for all pages with prefix docs/ objects in the docs/ folder to documents/, you can set a condition block with KeyPrefixEquals set to docs/ and in the Redirect set ReplaceKeyPrefixWith to /documents.
Not required if one of the siblings is present.
Can be present only if ReplaceKeyWith is not provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeyprefixwith
PrimitiveType: String
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

### -ReplaceKeyWith
The specific object key to use in the redirect request.
For example, redirect request to error.html.
Not required if one of the siblings is present.
Can be present only if ReplaceKeyPrefixWith is not provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeywith
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.RedirectRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html)

