# Add-VSBudgetsBudgetSpend

## SYNOPSIS
Adds an AWS::Budgets::Budget.Spend resource property to the template.
The amount of cost or usage that is measured for a budget.

## SYNTAX

```
Add-VSBudgetsBudgetSpend [-Amount] <Object> [-Unit] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.Spend resource property to the template.
The amount of cost or usage that is measured for a budget.

For example, a Spend for 3 GB of S3 usage would have the following parameters:

+ An Amount of 3

+ A unit of GB

## PARAMETERS

### -Amount
The cost or usage amount that is associated with a budget forecast, actual spend, or budget threshold.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-amount
PrimitiveType: Double
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

### -Unit
The unit of measurement that is used for the budget forecast, actual spend, or budget threshold, such as dollars or GB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-unit
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

### Vaporshell.Resource.Budgets.Budget.Spend
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html)

