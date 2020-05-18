# Add-VSAccessAnalyzerAnalyzerFilter

## SYNOPSIS
Adds an AWS::AccessAnalyzer::Analyzer.Filter resource property to the template.
The criteria that defines the rule.

## SYNTAX

```
Add-VSAccessAnalyzerAnalyzerFilter [[-Contains] <Object>] [[-Eq] <Object>] [[-Exists] <Object>]
 [-Property] <Object> [[-Neq] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AccessAnalyzer::Analyzer.Filter resource property to the template.
The criteria that defines the rule.

## PARAMETERS

### -Contains
A "contains" condition to match for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-contains
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -Eq
An "equals" condition to match for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-eq
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -Exists
An "exists" condition to match for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-exists
UpdateType: Mutable
PrimitiveType: Boolean

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

### -Property
The property used to define the criteria in the filter for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-property
UpdateType: Mutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Neq
A "not equal" condition to match for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-neq
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AccessAnalyzer.Analyzer.Filter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html)

