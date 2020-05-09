# Add-VSEC2NetworkAclEntryPortRange

## SYNOPSIS
Adds an AWS::EC2::NetworkAclEntry.PortRange resource property to the template.
Describes a range of ports.

## SYNTAX

```
Add-VSEC2NetworkAclEntryPortRange [[-From] <Object>] [[-To] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::NetworkAclEntry.PortRange resource property to the template.
Describes a range of ports.

## PARAMETERS

### -From
The first port in the range.
Required if you specify 6 TCP or 17 UDP for the protocol parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from
PrimitiveType: Integer
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

### -To
The last port in the range.
Required if you specify 6 TCP or 17 UDP for the protocol parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to
PrimitiveType: Integer
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

### Vaporshell.Resource.EC2.NetworkAclEntry.PortRange
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html)

