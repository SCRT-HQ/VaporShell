# Add-VSElasticLoadBalancingV2TargetGroupMatcher

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.Matcher resource property to the template.
Specifies the HTTP codes that healthy targets must use when responding to an HTTP health check.

## SYNTAX

```
Add-VSElasticLoadBalancingV2TargetGroupMatcher [-HttpCode] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.Matcher resource property to the template.
Specifies the HTTP codes that healthy targets must use when responding to an HTTP health check.

## PARAMETERS

### -HttpCode
The HTTP codes.
For Application Load Balancers, you can specify values between 200 and 499, and the default value is 200.
You can specify multiple values for example, "200,202" or a range of values for example, "200-299".
For Network Load Balancers, this is 200-399.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html#cfn-elasticloadbalancingv2-targetgroup-matcher-httpcode
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

### Vaporshell.Resource.ElasticLoadBalancingV2.TargetGroup.Matcher
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html)

