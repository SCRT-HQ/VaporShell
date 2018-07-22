function Add-VSBudgetsBudgetCostTypes {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.CostTypes resource property to the template

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.CostTypes resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html

    .PARAMETER IncludeSupport
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeOtherSubscription
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeTax
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeSubscription
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER UseBlended
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeUpfront
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeDiscount
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeCredit
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeRecurring
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER UseAmortized
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized    
		PrimitiveType: Boolean    
		UpdateType: Mutable    

    .PARAMETER IncludeRefund
		Required: False    
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
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.CostTypes'
    }
}
