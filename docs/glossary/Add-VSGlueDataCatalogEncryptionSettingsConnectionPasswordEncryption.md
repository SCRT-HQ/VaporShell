# Add-VSGlueDataCatalogEncryptionSettingsConnectionPasswordEncryption

## SYNOPSIS
Adds an AWS::Glue::DataCatalogEncryptionSettings.ConnectionPasswordEncryption resource property to the template.
The data structure used by the Data Catalog to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties.
You can enable catalog encryption or only password encryption.

## SYNTAX

```
Add-VSGlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
 [[-ReturnConnectionPasswordEncrypted] <Object>] [[-KmsKeyId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::DataCatalogEncryptionSettings.ConnectionPasswordEncryption resource property to the template.
The data structure used by the Data Catalog to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties.
You can enable catalog encryption or only password encryption.

When a CreationConnection request arrives containing a password, the Data Catalog first encrypts the password using your AWS KMS key.
It then encrypts the whole connection object again if catalog encryption is also enabled.

This encryption requires that you set AWS KMS key permissions to enable or restrict access on the password key according to your security requirements.
For example, you might want only administrators to have decrypt permission on the password key.

## PARAMETERS

### -ReturnConnectionPasswordEncrypted
When the ReturnConnectionPasswordEncrypted flag is set to "true", passwords remain encrypted in the responses of GetConnection and GetConnections.
This encryption takes effect independently from catalog encryption.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-returnconnectionpasswordencrypted
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

### -KmsKeyId
An AWS KMS key that is used to encrypt the connection password.
If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least kms:Encrypt permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.
You can set the decrypt permission to enable or restrict access on the password key according to your security requirements.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-kmskeyid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.DataCatalogEncryptionSettings.ConnectionPasswordEncryption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html)

