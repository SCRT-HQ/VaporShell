# Add-VSRoute53HostedZoneVPC

## SYNOPSIS
Adds an AWS::Route53::HostedZone.VPC resource property to the template.
*Private hosted zones only:* A complex type that contains information about an Amazon VPC.
Route 53 Resolver uses the records in the private hosted zone to route traffic in that VPC.

## SYNTAX

```
Add-VSRoute53HostedZoneVPC [-VPCId] <Object> [-VPCRegion] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HostedZone.VPC resource property to the template.
*Private hosted zones only:* A complex type that contains information about an Amazon VPC.
Route 53 Resolver uses the records in the private hosted zone to route traffic in that VPC.

**Note**

For public hosted zones, omit VPCs, VPCId, and VPCRegion.

## PARAMETERS

### -VPCId
*Private hosted zones only:* The ID of an Amazon VPC.
For public hosted zones, omit VPCs, VPCId, and VPCRegion.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcid
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

### -VPCRegion
*Private hosted zones only:* The region that an Amazon VPC was created in.
For public hosted zones, omit VPCs, VPCId, and VPCRegion.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcregion
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53.HostedZone.VPC
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html)

