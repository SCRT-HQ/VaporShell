# Add-VSDLMLifecyclePolicyCrossRegionCopyRetainRule

## SYNOPSIS
Adds an AWS::DLM::LifecyclePolicy.CrossRegionCopyRetainRule resource property to the template.
Specifies the retention rule for cross-Region snapshot copies.

## SYNTAX

```
Add-VSDLMLifecyclePolicyCrossRegionCopyRetainRule [[-IntervalUnit] <Object>] [[-Interval] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DLM::LifecyclePolicy.CrossRegionCopyRetainRule resource property to the template.
Specifies the retention rule for cross-Region snapshot copies.

## PARAMETERS

### -IntervalUnit
The unit of time for time-based retention.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-intervalunit
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

### -Interval
The amount of time to retain each snapshot.
The maximum is 100 years.
This is equivalent to 1200 months, 5200 weeks, or 36500 days.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-interval
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

### Vaporshell.Resource.DLM.LifecyclePolicy.CrossRegionCopyRetainRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html)

