# Add-VSS3BucketReplicationConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.ReplicationConfiguration resource property to the template.
A container for replication rules.
You can add up to 1,000 rules.
The maximum size of a replication configuration is 2 MB.

## SYNTAX

```
Add-VSS3BucketReplicationConfiguration [-Role] <Object> [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ReplicationConfiguration resource property to the template.
A container for replication rules.
You can add up to 1,000 rules.
The maximum size of a replication configuration is 2 MB.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Role
The Amazon Resource Name ARN of the AWS Identity and Access Management IAM role that Amazon S3 assumes when replicating objects.
For more information, see How to Set Up Cross-Region Replication: https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-how-setup.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-role
PrimitiveType: String
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

### -Rules
A container for one or more replication rules.
A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-rules
DuplicatesAllowed: False
ItemType: ReplicationRule
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ReplicationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html)

