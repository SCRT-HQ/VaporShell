# Add-VSMSKClusterEncryptionInTransit

## SYNOPSIS
Adds an AWS::MSK::Cluster.EncryptionInTransit resource property to the template.
The settings for encrypting data in transit.

## SYNTAX

```
Add-VSMSKClusterEncryptionInTransit [[-ClientBroker] <Object>] [[-InCluster] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.EncryptionInTransit resource property to the template.
The settings for encrypting data in transit.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ClientBroker
Indicates the encryption setting for data in transit between clients and brokers.
The following are the possible values.
+ TLS means that client-broker communication is enabled with TLS only.
+ TLS_PLAINTEXT means that client-broker communication is enabled for both TLS-encrypted, as well as plaintext data.
+ PLAINTEXT means that client-broker communication is enabled in plaintext only.
The default value is TLS_PLAINTEXT.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-clientbroker
PrimitiveType: String
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

### -InCluster
When set to true, it indicates that data communication among the broker nodes of the cluster is encrypted.
When set to false, the communication happens in plaintext.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-incluster
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.EncryptionInTransit
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html)

