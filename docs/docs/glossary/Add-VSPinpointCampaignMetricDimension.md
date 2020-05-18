# Add-VSPinpointCampaignMetricDimension

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.MetricDimension resource property to the template.
Specifies metric-based criteria for including or excluding endpoints from a segment.
These criteria derive from custom metrics that you define for endpoints.

## SYNTAX

```
Add-VSPinpointCampaignMetricDimension [[-ComparisonOperator] <Object>] [[-Value] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.MetricDimension resource property to the template.
Specifies metric-based criteria for including or excluding endpoints from a segment.
These criteria derive from custom metrics that you define for endpoints.

## PARAMETERS

### -ComparisonOperator
The operator to use when comparing metric values.
Valid values are: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, and EQUAL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-comparisonoperator
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

### -Value
The value to compare.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-value
PrimitiveType: Double
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

### Vaporshell.Resource.Pinpoint.Campaign.MetricDimension
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html)

