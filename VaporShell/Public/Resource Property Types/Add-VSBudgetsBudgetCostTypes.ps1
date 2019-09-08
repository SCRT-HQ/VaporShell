function Add-VSBudgetsBudgetCostTypes {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.CostTypes resource property to the template

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.CostTypes resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html

    .PARAMETER IncludeSupport
        Specifies whether a budget includes support subscription fees.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeOtherSubscription
        Specifies whether a budget includes non-RI subscription costs.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeTax
        Specifies whether a budget includes taxes.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeSubscription
        Specifies whether a budget includes subscriptions.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER UseBlended
        Specifies whether a budget uses a blended rate.
The default value is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeUpfront
        Specifies whether a budget includes upfront RI costs.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeDiscount
        Specifies whether a budget includes discounts.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeCredit
        Specifies whether a budget includes credits.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeRecurring
        Specifies whether a budget includes recurring fees such as monthly RI fees.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER UseAmortized
        Specifies whether a budget uses the amortized rate.
The default value is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IncludeRefund
        Specifies whether a budget includes refunds.
The default value is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerefund
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Budgets.Budget.CostTypes')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeSupport,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeOtherSubscription,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeTax,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeSubscription,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $UseBlended,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeUpfront,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeDiscount,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeCredit,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeRecurring,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $UseAmortized,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IncludeRefund
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.CostTypes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
