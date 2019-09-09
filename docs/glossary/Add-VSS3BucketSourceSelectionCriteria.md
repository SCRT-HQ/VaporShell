# Add-VSS3BucketSourceSelectionCriteria

## SYNOPSIS
Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template.
A container that describes additional filters for identifying the source objects that you want to replicate.
You can choose to enable or disable the replication of these objects.
Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using an AWS KMS-Managed Key (SSE-KMS.

## SYNTAX

```
Add-VSS3BucketSourceSelectionCriteria [-SseKmsEncryptedObjects] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template.
A container that describes additional filters for identifying the source objects that you want to replicate.
You can choose to enable or disable the replication of these objects.
Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using an AWS KMS-Managed Key (SSE-KMS.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SseKmsEncryptedObjects
A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS.
If you include SourceSelectionCriteria in the replication configuration, this element is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-ssekmsencryptedobjects
Type: SseKmsEncryptedObjects
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.SourceSelectionCriteria
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html)

