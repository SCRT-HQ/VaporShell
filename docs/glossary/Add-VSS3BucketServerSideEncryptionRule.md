# Add-VSS3BucketServerSideEncryptionRule

## SYNOPSIS
Adds an AWS::S3::Bucket.ServerSideEncryptionRule resource property to the template.
Specifies the default server-side encryption configuration.

## SYNTAX

```
Add-VSS3BucketServerSideEncryptionRule [[-ServerSideEncryptionByDefault] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ServerSideEncryptionRule resource property to the template.
Specifies the default server-side encryption configuration.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServerSideEncryptionByDefault
Specifies the default server-side encryption to apply to new objects in the bucket.
If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html#cfn-s3-bucket-serversideencryptionrule-serversideencryptionbydefault
Type: ServerSideEncryptionByDefault
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ServerSideEncryptionRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html)

