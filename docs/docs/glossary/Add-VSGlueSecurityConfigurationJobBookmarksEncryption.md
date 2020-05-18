# Add-VSGlueSecurityConfigurationJobBookmarksEncryption

## SYNOPSIS
Adds an AWS::Glue::SecurityConfiguration.JobBookmarksEncryption resource property to the template.
Specifies how job bookmark data should be encrypted.

## SYNTAX

```
Add-VSGlueSecurityConfigurationJobBookmarksEncryption [[-KmsKeyArn] <Object>]
 [[-JobBookmarksEncryptionMode] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::SecurityConfiguration.JobBookmarksEncryption resource property to the template.
Specifies how job bookmark data should be encrypted.

## PARAMETERS

### -KmsKeyArn
The Amazon Resource Name ARN of the KMS key to be used to encrypt the data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-kmskeyarn
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

### -JobBookmarksEncryptionMode
The encryption mode to use for job bookmarks data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-jobbookmarksencryptionmode
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

### Vaporshell.Resource.Glue.SecurityConfiguration.JobBookmarksEncryption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html)

