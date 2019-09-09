# Add-VSBudgetsBudgetTimePeriod

## SYNOPSIS
Adds an AWS::Budgets::Budget.TimePeriod resource property to the template.
The period of time that is covered by a budget.
The period has a start date and an end date.
The start date must come before the end date.
There are no restrictions on the end date.

## SYNTAX

```
Add-VSBudgetsBudgetTimePeriod [[-Start] <Object>] [[-End] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.TimePeriod resource property to the template.
The period of time that is covered by a budget.
The period has a start date and an end date.
The start date must come before the end date.
There are no restrictions on the end date.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Start
The start date for a budget.
If you created your budget and didn't specify a start date, the start date defaults to the start of the chosen time period MONTHLY, QUARTERLY, or ANNUALLY.
For example, if you create your budget on January 24, 2019, choose MONTHLY, and don't set a start date, the start date defaults to 01/01/19 00:00 UTC.
The defaults are the same for the AWS Billing and Cost Management console and the API.
You can change your start date with the UpdateBudget operation.
Valid values depend on the value of BudgetType:
+ If BudgetType is COST or USAGE: Valid values are MONTHLY, QUARTERLY, and ANNUALLY.
+ If BudgetType is RI_UTILIZATION or RI_COVERAGE: Valid values are DAILY, MONTHLY, QUARTERLY, and ANNUALLY.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-start
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

### -End
The end date for a budget.
If you didn't specify an end date, AWS set your end date to 06/15/87 00:00 UTC.
The defaults are the same for the AWS Billing and Cost Management console and the API.
After the end date, AWS deletes the budget and all associated notifications and subscribers.
You can change your end date with the UpdateBudget operation.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-end
PrimitiveType: String
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

### Vaporshell.Resource.Budgets.Budget.TimePeriod
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html)

