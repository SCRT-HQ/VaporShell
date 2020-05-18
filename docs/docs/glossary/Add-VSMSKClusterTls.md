# Add-VSMSKClusterTls

## SYNOPSIS
Adds an AWS::MSK::Cluster.Tls resource property to the template.
Details for client authentication using TLS.

## SYNTAX

```
Add-VSMSKClusterTls [[-CertificateAuthorityArnList] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.Tls resource property to the template.
Details for client authentication using TLS.

## PARAMETERS

### -CertificateAuthorityArnList
List of ACM Certificate Authority ARNs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html#cfn-msk-cluster-tls-certificateauthorityarnlist
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.Tls
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html)

