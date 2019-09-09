# Add-VSTransferServerEndpointDetails

## SYNOPSIS
Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that you want to configure for your SFTP server.
This parameter is required when you specify a value for the EndpointType parameter.

## SYNTAX

```
Add-VSTransferServerEndpointDetails [-VpcEndpointId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that you want to configure for your SFTP server.
This parameter is required when you specify a value for the EndpointType parameter.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -VpcEndpointId
The ID of the VPC endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Transfer.Server.EndpointDetails
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html)

