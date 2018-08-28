function Add-VSBudgetsBudgetBudgetData {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.BudgetData resource property to the template

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.BudgetData resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html

    .PARAMETER BudgetLimit
		Type: Spend    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit    
		UpdateType: Mutable    

    .PARAMETER TimePeriod
		Type: TimePeriod    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod    
		UpdateType: Mutable    

    .PARAMETER TimeUnit
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER CostFilters
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costfilters    
		PrimitiveType: Json    
		UpdateType: Mutable    

    .PARAMETER BudgetName
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname    
		PrimitiveType: String    
		UpdateType: Immutable    

    .PARAMETER CostTypes
		Type: CostTypes    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes    
		UpdateType: Mutable    

    .PARAMETER BudgetType
		Required: True    
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
    }
}
