# Add-VSServiceCatalogCloudFormationProvisionedProductProvisioningPreferences

## SYNOPSIS
Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template.
The user-defined preferences that will be applied when updating a provisioned product.
Not all preferences are applicable to all provisioned product types.

## SYNTAX

```
Add-VSServiceCatalogCloudFormationProvisionedProductProvisioningPreferences [[-StackSetAccounts] <Object>]
 [[-StackSetFailureToleranceCount] <Object>] [[-StackSetMaxConcurrencyPercentage] <Object>]
 [[-StackSetMaxConcurrencyCount] <Object>] [[-StackSetRegions] <Object>] [[-StackSetOperationType] <Object>]
 [[-StackSetFailureTolerancePercentage] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences resource property to the template.
The user-defined preferences that will be applied when updating a provisioned product.
Not all preferences are applicable to all provisioned product types.

## PARAMETERS

### -StackSetAccounts
One or more AWS accounts that will have access to the provisioned product.
Applicable only to a CFN_STACKSET provisioned product type.
The AWS accounts specified should be within the list of accounts in the STACKSET constraint.
To get the list of accounts in the STACKSET constraint, use the DescribeProvisioningParameters operation.
If no values are specified, the default value is all accounts from the STACKSET constraint.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetaccounts
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

### -StackSetFailureToleranceCount
The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region.
If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetFailureToleranceCount or StackSetFailureTolerancePercentage, but not both.
The default value is 0 if no value is specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancecount
PrimitiveType: Integer
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

### -StackSetMaxConcurrencyPercentage
The maximum percentage of accounts in which to perform this operation at one time.
When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.
This is true except in cases where rounding down would result is zero.
In this case, AWS Service Catalog sets the number as 1 instead.
Note that this setting lets you specify the maximum for operations.
For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetMaxConcurrentCount or StackSetMaxConcurrentPercentage, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencypercentage
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackSetMaxConcurrencyCount
The maximum number of accounts in which to perform this operation at one time.
This is dependent on the value of StackSetFailureToleranceCount.
StackSetMaxConcurrentCount is at most one more than the StackSetFailureToleranceCount.
Note that this setting lets you specify the maximum for operations.
For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetMaxConcurrentCount or StackSetMaxConcurrentPercentage, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencycount
PrimitiveType: Integer
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

### -StackSetRegions
One or more AWS Regions where the provisioned product will be available.
Applicable only to a CFN_STACKSET provisioned product type.
The specified regions should be within the list of regions from the STACKSET constraint.
To get the list of regions in the STACKSET constraint, use the DescribeProvisioningParameters operation.
If no values are specified, the default value is all regions from the STACKSET constraint.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetregions
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

### -StackSetOperationType
Determines what action AWS Service Catalog performs to a stack set or a stack instance represented by the provisioned product.
The default value is UPDATE if nothing is specified.
Applicable only to a CFN_STACKSET provisioned product type.
CREATE
Creates a new stack instance in the stack set represented by the provisioned product.
In this case, only new stack instances are created based on accounts and regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.
UPDATE
Updates the stack set represented by the provisioned product and also its stack instances.
DELETE
Deletes a stack instance in the stack set represented by the provisioned product.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetoperationtype
PrimitiveType: String
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

### -StackSetFailureTolerancePercentage
The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region.
If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.
When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.
Applicable only to a CFN_STACKSET provisioned product type.
Conditional: You must specify either StackSetFailureToleranceCount or StackSetFailureTolerancePercentage, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancepercentage
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningPreferences
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html)

