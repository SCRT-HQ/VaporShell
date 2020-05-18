# Add-VSDLMLifecyclePolicyFastRestoreRule

## SYNOPSIS
Adds an AWS::DLM::LifecyclePolicy.FastRestoreRule resource property to the template.
Specifies a rule for enabling fast snapshot restore.
You can enable fast snapshot restore based on either a count or a time interval.

## SYNTAX

```
Add-VSDLMLifecyclePolicyFastRestoreRule [[-IntervalUnit] <Object>] [[-AvailabilityZones] <Object>]
 [[-Count] <Object>] [[-Interval] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DLM::LifecyclePolicy.FastRestoreRule resource property to the template.
Specifies a rule for enabling fast snapshot restore.
You can enable fast snapshot restore based on either a count or a time interval.

## PARAMETERS

### -IntervalUnit
The unit of time for enabling fast snapshot restore.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-intervalunit
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

### -AvailabilityZones
The Availability Zones in which to enable fast snapshot restore.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-availabilityzones
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

### -Count
The number of snapshots to be enabled with fast snapshot restore.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-count
PrimitiveType: Integer
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

### -Interval
The amount of time to enable fast snapshot restore.
The maximum is 100 years.
This is equivalent to 1200 months, 5200 weeks, or 36500 days.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-interval
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DLM.LifecyclePolicy.FastRestoreRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html)

