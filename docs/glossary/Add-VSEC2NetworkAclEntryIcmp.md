# Add-VSEC2NetworkAclEntryIcmp

## SYNOPSIS
Adds an AWS::EC2::NetworkAclEntry.Icmp resource property to the template.
Describes the ICMP type and code.

## SYNTAX

```
Add-VSEC2NetworkAclEntryIcmp [[-Code] <Int32>] [[-Type] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::NetworkAclEntry.Icmp resource property to the template.
Describes the ICMP type and code.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Code
The Internet Control Message Protocol ICMP code.
You can use -1 to specify all ICMP codes for the given ICMP type.
Requirement is conditional: Required if you specify 1 ICMP for the protocol parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The Internet Control Message Protocol ICMP type.
You can use -1 to specify all ICMP types.
Conditional requirement: Required if you specify 1 ICMP for the CreateNetworkAclEntry protocol parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.NetworkAclEntry.Icmp
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html)

