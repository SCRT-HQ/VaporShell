# Add-VSGlueDataCatalogEncryptionSettingsEncryptionAtRest

## SYNOPSIS
Adds an AWS::Glue::DataCatalogEncryptionSettings.EncryptionAtRest resource property to the template.
Specifies the encryption-at-rest configuration for the Data Catalog.

## SYNTAX

```
Add-VSGlueDataCatalogEncryptionSettingsEncryptionAtRest [[-CatalogEncryptionMode] <Object>]
 [[-SseAwsKmsKeyId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::DataCatalogEncryptionSettings.EncryptionAtRest resource property to the template.
Specifies the encryption-at-rest configuration for the Data Catalog.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CatalogEncryptionMode
The encryption-at-rest mode for encrypting Data Catalog data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-catalogencryptionmode
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

### -SseAwsKmsKeyId
The ID of the AWS KMS key to use for encryption at rest.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-sseawskmskeyid
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

### Vaporshell.Resource.Glue.DataCatalogEncryptionSettings.EncryptionAtRest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html)

