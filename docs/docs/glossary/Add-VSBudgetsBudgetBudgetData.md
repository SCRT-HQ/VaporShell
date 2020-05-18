# Add-VSBudgetsBudgetBudgetData

## SYNOPSIS
Adds an AWS::Budgets::Budget.BudgetData resource property to the template.
Represents the output of the CreateBudget operation.
The content consists of the detailed metadata and data file information, and the current status of the budget object.

## SYNTAX

```
Add-VSBudgetsBudgetBudgetData [[-BudgetLimit] <Object>] [[-TimePeriod] <Object>] [-TimeUnit] <Object>
 [[-PlannedBudgetLimits] <Object>] [[-CostFilters] <Object>] [[-BudgetName] <Object>] [[-CostTypes] <Object>]
 [-BudgetType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.BudgetData resource property to the template.
Represents the output of the CreateBudget operation.
The content consists of the detailed metadata and data file information, and the current status of the budget object.

This is the ARN pattern for a budget:

arn:aws:budgets::AccountId:budget/budgetName

## PARAMETERS

### -BudgetLimit
The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage that you want to track with your budget.
BudgetLimit is required for cost or usage budgets, but optional for RI or Savings Plans utilization or coverage budgets.
RI and Savings Plans utilization or coverage budgets default to 100, which is the only valid value for RI or Savings Plans utilization or coverage budgets.
You can't use BudgetLimit with PlannedBudgetLimits for CreateBudget and UpdateBudget actions.

Type: Spend
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit
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

### -TimePeriod
The period of time that is covered by a budget.
The period has a start date and an end date.
The start date must come before the end date.
There are no restrictions on the end date.
The start date for a budget.
If you created your budget and didn't specify a start date, the start date defaults to the start of the chosen time period MONTHLY, QUARTERLY, or ANNUALLY.
For example, if you create your budget on January 24, 2019, choose MONTHLY, and don't set a start date, the start date defaults to 01/01/19 00:00 UTC.
The defaults are the same for the AWS Billing and Cost Management console and the API.
You can change your start date with the UpdateBudget operation.
After the end date, AWS deletes the budget and all associated notifications and subscribers.

Type: TimePeriod
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod
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

### -TimeUnit
The length of time until a budget resets the actual and forecasted spend.
DAILY is available only for RI_UTILIZATION and RI_COVERAGE budgets.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlannedBudgetLimits
A map containing multiple BudgetLimit, including current or future limits.
PlannedBudgetLimits is available for cost or usage budget and supports monthly and quarterly TimeUnit.
For monthly budgets, provide 12 months of PlannedBudgetLimits values.
This must start from the current month and include the next 11 months.
The key is the start of the month, UTC in epoch seconds.
For quarterly budgets, provide 4 quarters of PlannedBudgetLimits value entries in standard calendar quarter increments.
This must start from the current quarter and include the next 3 quarters.
The key is the start of the quarter, UTC in epoch seconds.
If the planned budget expires before 12 months for monthly or 4 quarters for quarterly, provide the PlannedBudgetLimits values only for the remaining periods.
If the budget begins at a date in the future, provide PlannedBudgetLimits values from the start date of the budget.
After all of the BudgetLimit values in PlannedBudgetLimits are used, the budget continues to use the last limit as the BudgetLimit.
At that point, the planned budget provides the same experience as a fixed budget.
DescribeBudget and DescribeBudgets response along with PlannedBudgetLimits will also contain BudgetLimit representing the current month or quarter limit present in PlannedBudgetLimits.
This only applies to budgets created with PlannedBudgetLimits.
Budgets created without PlannedBudgetLimits will only contain BudgetLimit, and no PlannedBudgetLimits.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-plannedbudgetlimits
PrimitiveType: Json
UpdateType: Immutable

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

### -CostFilters
The cost filters, such as service or tag, that are applied to a budget.
AWS Budgets supports the following services as a filter for RI budgets:
+ Amazon Elastic Compute Cloud - Compute
+ Amazon Redshift
+ Amazon Relational Database Service
+ Amazon ElastiCache
+ Amazon Elasticsearch Service

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costfilters
PrimitiveType: Json
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

### -BudgetName
The name of a budget.
The value must be unique within an account.
BudgetName can't include : and  characters.
If you don't include value for BudgetName in the template, Billing and Cost Management assigns your budget a randomly generated name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname
PrimitiveType: String
UpdateType: Immutable

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

### -CostTypes
The types of costs that are included in this COST budget.
USAGE, RI_UTILIZATION, RI_COVERAGE, SAVINGS_PLANS_UTILIZATION, and SAVINGS_PLANS_COVERAGE budgets do not have CostTypes.

Type: CostTypes
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes
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

### -BudgetType
Whether this budget tracks costs, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Budgets.Budget.BudgetData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html)

