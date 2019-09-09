# Add-VSBudgetsBudgetBudgetData

## SYNOPSIS
Adds an AWS::Budgets::Budget.BudgetData resource property to the template.
Represents the output of the CreateBudget operation.
The content consists of the detailed metadata and data file information, and the current status of the budget object.

## SYNTAX

```
Add-VSBudgetsBudgetBudgetData [[-BudgetLimit] <Object>] [[-TimePeriod] <Object>] [-TimeUnit] <Object>
 [[-CostFilters] <Object>] [[-BudgetName] <Object>] [[-CostTypes] <Object>] [-BudgetType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.BudgetData resource property to the template.
Represents the output of the CreateBudget operation.
The content consists of the detailed metadata and data file information, and the current status of the budget object.

This is the ARN pattern for a budget:

arn:aws:budgetservice::AccountId:budget/budgetName

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BudgetLimit
The total amount of cost, usage, RI utilization, or RI coverage that you want to track with your budget.
BudgetLimit is required for cost or usage budgets, but optional for RI utilization or coverage budgets.
RI utilization or coverage budgets default to 100, which is the only valid value for RI utilization or coverage budgets.
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
Position: 4
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
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CostTypes
The types of costs that are included in this COST budget.
USAGE, RI_UTILIZATION, and RI_COVERAGE budgets do not have CostTypes.

Type: CostTypes
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes
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

### -BudgetType
Whether this budget tracks costs, usage, RI utilization, or RI coverage.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
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

