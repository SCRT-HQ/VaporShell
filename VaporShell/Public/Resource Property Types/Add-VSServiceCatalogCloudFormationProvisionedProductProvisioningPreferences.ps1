function Add-VSServiceCatalogCloudFormationProvisionedProductProvisioningPreferences {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template

    .DESCRIPTION
        Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html

    .PARAMETER StackSetAccounts
        One or more AWS accounts that will have access to the provisioned product.
Applicable only to a CFN_STACKSET provisioned product type.
The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the DescribeProvisioningParameters operation.
If no values are specified, the default value is all accounts from the STACKSET constraint.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetaccounts
        UpdateType: Mutable

    .PARAMETER StackSetFailureToleranceCount
        The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetFailureToleranceCount or StackSetFailureTolerancePercentage, but not both.
The default value is 0 if no value is specified.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancecount
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER StackSetMaxConcurrencyPercentage
        The maximum percentage of accounts in which to perform this operation at one time.
When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead.
Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetMaxConcurrentCount or StackSetMaxConcurrentPercentage, but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencypercentage
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER StackSetMaxConcurrencyCount
        The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of StackSetFailureToleranceCount. StackSetMaxConcurrentCount is at most one more than the StackSetFailureToleranceCount.
Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetMaxConcurrentCount or StackSetMaxConcurrentPercentage, but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencycount
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER StackSetRegions
        One or more AWS Regions where the provisioned product will be available.
Applicable only to a CFN_STACKSET provisioned product type.
The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the DescribeProvisioningParameters operation.
If no values are specified, the default value is all regions from the STACKSET constraint.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetregions
        UpdateType: Mutable

    .PARAMETER StackSetOperationType
        Determines what action AWS Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is UPDATE if nothing is specified.
Applicable only to a CFN_STACKSET provisioned product type.
CREATE
Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.
UPDATE
Updates the stack set represented by the provisioned product and also its stack instances.
DELETE
Deletes a stack instance in the stack set represented by the provisioned product.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetoperationtype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER StackSetFailureTolerancePercentage
        The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.
When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetFailureToleranceCount or StackSetFailureTolerancePercentage, but not both.

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
