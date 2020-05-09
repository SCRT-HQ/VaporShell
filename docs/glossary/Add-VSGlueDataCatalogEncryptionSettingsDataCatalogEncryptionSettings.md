# Add-VSGlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings

## SYNOPSIS
Adds an AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings resource property to the template.
Contains configuration information for maintaining Data Catalog security.

## SYNTAX

```
Add-VSGlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings [[-ConnectionPasswordEncryption] <Object>]
 [[-EncryptionAtRest] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings resource property to the template.
Contains configuration information for maintaining Data Catalog security.

## PARAMETERS

### -ConnectionPasswordEncryption
When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties.
You can enable catalog encryption or only password encryption.

Type: ConnectionPasswordEncryption
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-connectionpasswordencryption
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

### -EncryptionAtRest
Specifies the encryption-at-rest configuration for the Data Catalog.

Type: EncryptionAtRest
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-encryptionatrest
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

### Vaporshell.Resource.Glue.DataCatalogEncryptionSettings.DataCatalogEncryptionSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html)

