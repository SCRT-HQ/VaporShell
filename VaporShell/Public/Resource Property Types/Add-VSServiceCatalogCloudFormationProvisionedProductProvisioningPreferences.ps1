function Add-VSServiceCatalogCloudFormationProvisionedProductProvisioningPreferences {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template

    .DESCRIPTION
        Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html

    .PARAMETER StackSetAccounts
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetaccounts    
		UpdateType: Mutable    

    .PARAMETER StackSetFailureToleranceCount
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancecount    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER StackSetMaxConcurrencyPercentage
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencypercentage    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER StackSetMaxConcurrencyCount
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencycount    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .PARAMETER StackSetRegions
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetregions    
		UpdateType: Mutable    

    .PARAMETER StackSetOperationType
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetoperationtype    
		PrimitiveType: String    
		UpdateType: Mutable    

    .PARAMETER StackSetFailureTolerancePercentage
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancepercentage    
		PrimitiveType: Integer    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningPreferences')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StackSetAccounts,
        [parameter(Mandatory = $false)]
        [Int]
        $StackSetFailureToleranceCount,
        [parameter(Mandatory = $false)]
        [Int]
        $StackSetMaxConcurrencyPercentage,
        [parameter(Mandatory = $false)]
        [Int]
        $StackSetMaxConcurrencyCount,
        [parameter(Mandatory = $false)]
        $StackSetRegions,
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
        $StackSetOperationType,
        [parameter(Mandatory = $false)]
        [Int]
        $StackSetFailureTolerancePercentage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningPreferences'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
