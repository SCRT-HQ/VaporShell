# Add-VSAmazonMQBrokerEncryptionOptions

## SYNOPSIS
Adds an AWS::AmazonMQ::Broker.EncryptionOptions resource property to the template.
Encryption options for the broker.

## SYNTAX

```
Add-VSAmazonMQBrokerEncryptionOptions [[-KmsKeyId] <Object>] [-UseAwsOwnedKey] <Boolean> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AmazonMQ::Broker.EncryptionOptions resource property to the template.
Encryption options for the broker.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -KmsKeyId
The customer master key CMK to use for the AWS Key Management Service KMS.
This key is used to encrypt your data at rest.
If not provided, Amazon MQ will use a default CMK to encrypt your data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-kmskeyid
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

### -UseAwsOwnedKey
Enables the use of an AWS owned CMK using AWS Key Management Service KMS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-useawsownedkey
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AmazonMQ.Broker.EncryptionOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html)

