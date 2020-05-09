# Add-VSElasticLoadBalancingV2ListenerRuleHostHeaderConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig resource property to the template.
Information about a host header condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleHostHeaderConfig [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig resource property to the template.
Information about a host header condition.

## PARAMETERS

### -Values
One or more host names.
The maximum size of each name is 128 characters.
The comparison is case insensitive.
The following wildcard characters are supported: * matches 0 or more characters and ?
matches exactly 1 character.
If you specify multiple strings, the condition is satisfied if one of the strings matches the host name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.HostHeaderConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html)

