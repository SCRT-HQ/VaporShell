# Add-VSElasticLoadBalancingV2ListenerRuleRuleCondition

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template.
Specifies a condition for a listener rule.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleRuleCondition [[-Field] <Object>] [[-HostHeaderConfig] <Object>]
 [[-HttpHeaderConfig] <Object>] [[-HttpRequestMethodConfig] <Object>] [[-PathPatternConfig] <Object>]
 [[-QueryStringConfig] <Object>] [[-SourceIpConfig] <Object>] [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template.
Specifies a condition for a listener rule.

## PARAMETERS

### -Field
The field in the HTTP request.
The following are the possible values:
+  http-header
+  http-request-method
+  host-header
+  path-pattern
+  query-string
+  source-ip

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
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

### -HostHeaderConfig
Information for a host header condition.
Specify only when Field is host-header.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig
Type: HostHeaderConfig
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

### -HttpHeaderConfig
Information for an HTTP header condition.
Specify only when Field is http-header.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig
Type: HttpHeaderConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpRequestMethodConfig
Information for an HTTP method condition.
Specify only when Field is http-request-method.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig
Type: HttpRequestMethodConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PathPatternConfig
Information for a path pattern condition.
Specify only when Field is path-pattern.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig
Type: PathPatternConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryStringConfig
Information for a query string condition.
Specify only when Field is query-string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig
Type: QueryStringConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceIpConfig
Information for a source IP condition.
Specify only when Field is source-ip.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig
Type: SourceIpConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Values
The condition value.
Specify only when Field is host-header or path-pattern.
Alternatively, to specify multiple host names or multiple path patterns, use HostHeaderConfig or PathPatternConfig.
If Field is host-header and you're not using HostHeaderConfig, you can specify a single host name for example, my.example.com.
A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ - .
+ * matches 0 or more characters
+ ?
matches exactly 1 character
If Field is path-pattern and you're not using PathPatternConfig, you can specify a single path pattern for example, /img/*.
A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ _ - .
$ / ~ " ' @ : +
+ & using &amp;
+ * matches 0 or more characters
+ ?
matches exactly 1 character

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RuleCondition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html)

