# Add-VSRoute53HostedZoneHostedZoneConfig

## SYNOPSIS
Adds an AWS::Route53::HostedZone.HostedZoneConfig resource property to the template.
A complex type that contains an optional comment about your hosted zone.
If you don't want to specify a comment, omit both the HostedZoneConfig and Comment elements.

## SYNTAX

```
Add-VSRoute53HostedZoneHostedZoneConfig [[-Comment] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HostedZone.HostedZoneConfig resource property to the template.
A complex type that contains an optional comment about your hosted zone.
If you don't want to specify a comment, omit both the HostedZoneConfig and Comment elements.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Comment
Any comments that you want to include about the hosted zone.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html#cfn-route53-hostedzone-hostedzoneconfig-comment
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53.HostedZone.HostedZoneConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html)

