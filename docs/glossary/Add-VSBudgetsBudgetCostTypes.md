# Add-VSBudgetsBudgetCostTypes

## SYNOPSIS
Adds an AWS::Budgets::Budget.CostTypes resource property to the template.
The types of cost that are included in a COST budget, such as tax and subscriptions.

## SYNTAX

```
Add-VSBudgetsBudgetCostTypes [[-IncludeSupport] <Boolean>] [[-IncludeOtherSubscription] <Boolean>]
 [[-IncludeTax] <Boolean>] [[-IncludeSubscription] <Boolean>] [[-UseBlended] <Boolean>]
 [[-IncludeUpfront] <Boolean>] [[-IncludeDiscount] <Boolean>] [[-IncludeCredit] <Boolean>]
 [[-IncludeRecurring] <Boolean>] [[-UseAmortized] <Boolean>] [[-IncludeRefund] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.CostTypes resource property to the template.
The types of cost that are included in a COST budget, such as tax and subscriptions.

USAGE, RI_UTILIZATION, and RI_COVERAGE budgets do not have CostTypes.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -IncludeSupport
Specifies whether a budget includes support subscription fees.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeOtherSubscription
Specifies whether a budget includes non-RI subscription costs.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeTax
Specifies whether a budget includes taxes.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSubscription
Specifies whether a budget includes subscriptions.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseBlended
Specifies whether a budget uses a blended rate.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeUpfront
Specifies whether a budget includes upfront RI costs.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeDiscount
Specifies whether a budget includes discounts.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeCredit
Specifies whether a budget includes credits.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeRecurring
Specifies whether a budget includes recurring fees such as monthly RI fees.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseAmortized
Specifies whether a budget uses the amortized rate.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeRefund
Specifies whether a budget includes refunds.
The default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerefund
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Budgets.Budget.CostTypes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html)

