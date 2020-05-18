# Add-VSAthenaWorkGroupEncryptionConfiguration

## SYNOPSIS
Adds an AWS::Athena::WorkGroup.EncryptionConfiguration resource property to the template.
If query results are encrypted in Amazon S3, indicates the encryption option used (for example, SSE-KMS or CSE-KMS and key information.

## SYNTAX

```
Add-VSAthenaWorkGroupEncryptionConfiguration [-EncryptionOption] <Object> [[-KmsKey] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Athena::WorkGroup.EncryptionConfiguration resource property to the template.
If query results are encrypted in Amazon S3, indicates the encryption option used (for example, SSE-KMS or CSE-KMS and key information.

## PARAMETERS

### -EncryptionOption
Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys SSE-S3, server-side encryption with KMS-managed keys SSE-KMS, or client-side encryption with KMS-managed keys CSE-KMS is used.
If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used.
It specifies whether query results must be encrypted, for all queries that run in this workgroup.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-encryptionoption
UpdateType: Mutable
PrimitiveType: String

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

### -KmsKey
For SSE-KMS and CSE-KMS, this is the KMS key ARN or ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-kmskey
UpdateType: Mutable
PrimitiveType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Athena.WorkGroup.EncryptionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html)

