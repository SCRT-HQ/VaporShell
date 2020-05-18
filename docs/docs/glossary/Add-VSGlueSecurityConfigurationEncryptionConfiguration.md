# Add-VSGlueSecurityConfigurationEncryptionConfiguration

## SYNOPSIS
Adds an AWS::Glue::SecurityConfiguration.EncryptionConfiguration resource property to the template.
Specifies an encryption configuration.

## SYNTAX

```
Add-VSGlueSecurityConfigurationEncryptionConfiguration [[-S3Encryptions] <Object>]
 [[-CloudWatchEncryption] <Object>] [[-JobBookmarksEncryption] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::SecurityConfiguration.EncryptionConfiguration resource property to the template.
Specifies an encryption configuration.

## PARAMETERS

### -S3Encryptions
The encyption configuration for Amazon Simple Storage Service Amazon S3 data.

Type: S3Encryptions
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-s3encryptions
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

### -CloudWatchEncryption
The encryption configuration for Amazon CloudWatch.

Type: CloudWatchEncryption
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-cloudwatchencryption
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

### -JobBookmarksEncryption
The encryption configuration for job bookmarks.

Type: JobBookmarksEncryption
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-jobbookmarksencryption
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.SecurityConfiguration.EncryptionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html)

