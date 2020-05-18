# Add-VSEC2TrafficMirrorFilterRuleTrafficMirrorPortRange

## SYNOPSIS
Adds an AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange resource property to the template.
Describes the Traffic Mirror port range.

## SYNTAX

```
Add-VSEC2TrafficMirrorFilterRuleTrafficMirrorPortRange [-FromPort] <Object> [-ToPort] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange resource property to the template.
Describes the Traffic Mirror port range.

## PARAMETERS

### -FromPort
The start of the Traffic Mirror port range.
This applies to the TCP and UDP protocols.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-fromport
PrimitiveType: Integer
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

### -ToPort
The end of the Traffic Mirror port range.
This applies to the TCP and UDP protocols.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-toport
PrimitiveType: Integer
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

### Vaporshell.Resource.EC2.TrafficMirrorFilterRule.TrafficMirrorPortRange
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html)

