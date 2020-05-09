# Add-FnCidr

## SYNOPSIS
Adds the intrinsic function "Fn::Cidr" to a resource property

## SYNTAX

```
Add-FnCidr [-IpBlock] <Object> [-Count] <Object> [-CidrBits] <Object> [<CommonParameters>]
```

## DESCRIPTION
The intrinsic function Fn::Cidr returns an array of CIDR address blocks.
The number of CIDR blocks returned is dependent on the count parameter.

## EXAMPLES

### EXAMPLE 1
```
Add-FnCidr -IpBlock "192.168.0.0/24" -Count 6 -CidrBits 5
```

When the template is exported, this will convert to: { "Fn::Cidr" : \[ "192.168.0.0/24", "6", "5"\] }

## PARAMETERS

### -IpBlock
The user-specified CIDR address block to be split into smaller CIDR blocks.

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

### -Count
The number of CIDRs to generate.
Valid range is between 1 and 256.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CidrBits
The number of subnet bits for the CIDR.
For example, specifying a value "8" for this parameter will create a CIDR with a mask of "/24".

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Function.Cidr
## NOTES
You can use the following functions in a Fn::Cidr function:
    Fn::Select
    Ref

## RELATED LINKS

[https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html)

