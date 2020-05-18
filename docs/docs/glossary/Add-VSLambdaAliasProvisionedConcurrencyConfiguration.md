# Add-VSLambdaAliasProvisionedConcurrencyConfiguration

## SYNOPSIS
Adds an AWS::Lambda::Alias.ProvisionedConcurrencyConfiguration resource property to the template.
A provisioned concurrency configuration for a function's alias.

## SYNTAX

```
Add-VSLambdaAliasProvisionedConcurrencyConfiguration [-ProvisionedConcurrentExecutions] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Lambda::Alias.ProvisionedConcurrencyConfiguration resource property to the template.
A provisioned concurrency configuration for a function's alias.

## PARAMETERS

### -ProvisionedConcurrentExecutions
The amount of provisioned concurrency to allocate for the alias.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html#cfn-lambda-alias-provisionedconcurrencyconfiguration-provisionedconcurrentexecutions
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Lambda.Alias.ProvisionedConcurrencyConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html)

