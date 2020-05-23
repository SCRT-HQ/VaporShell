function Add-VSBudgetsBudgetBudgetData {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.BudgetData resource property to the template. Represents the output of the CreateBudget operation. The content consists of the detailed metadata and data file information, and the current status of the budget object.

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.BudgetData resource property to the template.
Represents the output of the CreateBudget operation. The content consists of the detailed metadata and data file information, and the current status of the budget object.

This is the ARN pattern for a budget:

arn:aws:budgets::AccountId:budget/budgetName

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html

    .PARAMETER BudgetLimit
        The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage that you want to track with your budget.
BudgetLimit is required for cost or usage budgets, but optional for RI or Savings Plans utilization or coverage budgets. RI and Savings Plans utilization or coverage budgets default to 100, which is the only valid value for RI or Savings Plans utilization or coverage budgets. You can't use BudgetLimit with PlannedBudgetLimits for CreateBudget and UpdateBudget actions.

        Type: Spend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit
        UpdateType: Mutable

    .PARAMETER TimePeriod
        The period of time that is covered by a budget. The period has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date.
The start date for a budget. If you created your budget and didn't specify a start date, the start date defaults to the start of the chosen time period MONTHLY, QUARTERLY, or ANNUALLY. For example, if you create your budget on January 24, 2019, choose MONTHLY, and don't set a start date, the start date defaults to 01/01/19 00:00 UTC. The defaults are the same for the AWS Billing and Cost Management console and the API.
You can change your start date with the UpdateBudget operation.
After the end date, AWS deletes the budget and all associated notifications and subscribers.

        Type: TimePeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod
        UpdateType: Mutable

    .PARAMETER TimeUnit
        The length of time until a budget resets the actual and forecasted spend. DAILY is available only for RI_UTILIZATION and RI_COVERAGE budgets.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER PlannedBudgetLimits
        A map containing multiple BudgetLimit, including current or future limits.
PlannedBudgetLimits is available for cost or usage budget and supports monthly and quarterly TimeUnit.
For monthly budgets, provide 12 months of PlannedBudgetLimits values. This must start from the current month and include the next 11 months. The key is the start of the month, UTC in epoch seconds.
For quarterly budgets, provide 4 quarters of PlannedBudgetLimits value entries in standard calendar quarter increments. This must start from the current quarter and include the next 3 quarters. The key is the start of the quarter, UTC in epoch seconds.
If the planned budget expires before 12 months for monthly or 4 quarters for quarterly, provide the PlannedBudgetLimits values only for the remaining periods.
If the budget begins at a date in the future, provide PlannedBudgetLimits values from the start date of the budget.
After all of the BudgetLimit values in PlannedBudgetLimits are used, the budget continues to use the last limit as the BudgetLimit. At that point, the planned budget provides the same experience as a fixed budget.
DescribeBudget and DescribeBudgets response along with PlannedBudgetLimits will also contain BudgetLimit representing the current month or quarter limit present in PlannedBudgetLimits. This only applies to budgets created with PlannedBudgetLimits. Budgets created without PlannedBudgetLimits will only contain BudgetLimit, and no PlannedBudgetLimits.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-plannedbudgetlimits
        PrimitiveType: Json
        UpdateType: Immutable

    .PARAMETER CostFilters
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

    .PARAMETER BudgetName
        The name of a budget. The value must be unique within an account. BudgetName can't include : and  characters. If you don't include value for BudgetName in the template, Billing and Cost Management assigns your budget a randomly generated name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname
        PrimitiveType: String
        UpdateType: Immutable

    .PARAMETER CostTypes
        The types of costs that are included in this COST budget.
USAGE, RI_UTILIZATION, RI_COVERAGE, SAVINGS_PLANS_UTILIZATION, and SAVINGS_PLANS_COVERAGE budgets do not have CostTypes.

        Type: CostTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes
        UpdateType: Mutable

    .PARAMETER BudgetType
        Whether this budget tracks costs, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Budgets.Budget.BudgetData')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $BudgetLimit,
        [parameter(Mandatory = $false)]
        $TimePeriod,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TimeUnit,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PlannedBudgetLimits,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CostFilters,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BudgetName,
        [parameter(Mandatory = $false)]
        $CostTypes,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BudgetType
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                PlannedBudgetLimits {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                CostFilters {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.BudgetData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
