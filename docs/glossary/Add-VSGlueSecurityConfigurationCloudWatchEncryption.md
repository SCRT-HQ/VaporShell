# Add-VSGlueSecurityConfigurationCloudWatchEncryption

## SYNOPSIS
Adds an AWS::Glue::SecurityConfiguration.CloudWatchEncryption resource property to the template.
Specifies how Amazon CloudWatch data should be encrypted.

## SYNTAX

```
Add-VSGlueSecurityConfigurationCloudWatchEncryption [[-KmsKeyArn] <Object>]
 [[-CloudWatchEncryptionMode] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::SecurityConfiguration.CloudWatchEncryption resource property to the template.
Specifies how Amazon CloudWatch data should be encrypted.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -KmsKeyArn
The Amazon Resource Name ARN of the KMS key to be used to encrypt the data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-kmskeyarn
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

### -CloudWatchEncryptionMode
The encryption mode to use for CloudWatch data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-cloudwatchencryptionmode
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

### Vaporshell.Resource.Glue.SecurityConfiguration.CloudWatchEncryption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html)

