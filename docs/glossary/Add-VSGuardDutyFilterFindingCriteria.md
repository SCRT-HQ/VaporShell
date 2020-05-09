# Add-VSGuardDutyFilterFindingCriteria

## SYNOPSIS
Adds an AWS::GuardDuty::Filter.FindingCriteria resource property to the template.
Represents a map of finding properties that match specified conditions and values when querying findings.

## SYNTAX

```
Add-VSGuardDutyFilterFindingCriteria [[-Criterion] <Object>] [[-ItemType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GuardDuty::Filter.FindingCriteria resource property to the template.
Represents a map of finding properties that match specified conditions and values when querying findings.

## PARAMETERS

### -Criterion
Represents a map of finding properties that match specified conditions and values when querying findings.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion
PrimitiveType: Json
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

### -ItemType
Specifies the condition to be applied to a single field when filtering through findings.

Type: Condition
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-itemtype
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

### Vaporshell.Resource.GuardDuty.Filter.FindingCriteria
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html)

