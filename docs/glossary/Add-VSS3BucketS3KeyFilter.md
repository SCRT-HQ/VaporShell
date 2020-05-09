# Add-VSS3BucketS3KeyFilter

## SYNOPSIS
Adds an AWS::S3::Bucket.S3KeyFilter resource property to the template.
A container for object key name prefix and suffix filtering rules.

## SYNTAX

```
Add-VSS3BucketS3KeyFilter [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.S3KeyFilter resource property to the template.
A container for object key name prefix and suffix filtering rules.

## PARAMETERS

### -Rules
A list of containers for the key-value pair that defines the criteria for the filter rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules
DuplicatesAllowed: False
ItemType: FilterRule
Type: List
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

### Vaporshell.Resource.S3.Bucket.S3KeyFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html)

