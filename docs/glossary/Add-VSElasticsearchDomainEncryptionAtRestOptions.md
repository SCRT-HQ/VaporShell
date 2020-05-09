# Add-VSElasticsearchDomainEncryptionAtRestOptions

## SYNOPSIS
Adds an AWS::Elasticsearch::Domain.EncryptionAtRestOptions resource property to the template.
Whether the domain should encrypt data at rest, and if so, the AWS Key Management Service (KMS key to use.
Can only be used to create a new domain, not update an existing one.

## SYNTAX

```
Add-VSElasticsearchDomainEncryptionAtRestOptions [[-Enabled] <Object>] [[-KmsKeyId] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Elasticsearch::Domain.EncryptionAtRestOptions resource property to the template.
Whether the domain should encrypt data at rest, and if so, the AWS Key Management Service (KMS key to use.
Can only be used to create a new domain, not update an existing one.

## PARAMETERS

### -Enabled
Specify true to enable encryption at rest.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-enabled
PrimitiveType: Boolean
UpdateType: Immutable

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

### -KmsKeyId
The KMS key ID.
Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-kmskeyid
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.Elasticsearch.Domain.EncryptionAtRestOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html)

