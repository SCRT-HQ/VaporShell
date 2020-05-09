# Add-VSConfigConfigurationAggregatorOrganizationAggregationSource

## SYNOPSIS
Adds an AWS::Config::ConfigurationAggregator.OrganizationAggregationSource resource property to the template.
This object contains regions to set up the aggregator and an IAM role to retrieve organization details.

## SYNTAX

```
Add-VSConfigConfigurationAggregatorOrganizationAggregationSource [[-AllAwsRegions] <Object>]
 [[-AwsRegions] <Object>] [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::ConfigurationAggregator.OrganizationAggregationSource resource property to the template.
This object contains regions to set up the aggregator and an IAM role to retrieve organization details.

## PARAMETERS

### -AllAwsRegions
If true, aggregate existing AWS Config regions and future regions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-allawsregions
PrimitiveType: Boolean
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

### -AwsRegions
The source regions being aggregated.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-awsregions
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

### -RoleArn
ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.ConfigurationAggregator.OrganizationAggregationSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html)

