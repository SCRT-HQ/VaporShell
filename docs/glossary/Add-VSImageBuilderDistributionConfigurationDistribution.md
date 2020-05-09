# Add-VSImageBuilderDistributionConfigurationDistribution

## SYNOPSIS
Adds an AWS::ImageBuilder::DistributionConfiguration.Distribution resource property to the template.
The distribution configuration distribution defines the settings for a specific Region in the Distribution Configuration.

## SYNTAX

```
Add-VSImageBuilderDistributionConfigurationDistribution [[-Region] <Object>]
 [[-AmiDistributionConfiguration] <Object>] [[-LicenseConfigurationArns] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ImageBuilder::DistributionConfiguration.Distribution resource property to the template.
The distribution configuration distribution defines the settings for a specific Region in the Distribution Configuration.

## PARAMETERS

### -Region
The target Region for the Distribution Configuration.
For example, eu-west-1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-region
UpdateType: Mutable
PrimitiveType: String

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

### -AmiDistributionConfiguration
The specific AMI settings, such as launch permissions and AMI tags.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-amidistributionconfiguration
UpdateType: Mutable
PrimitiveType: Json

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

### -LicenseConfigurationArns
The License Manager Configuration to associate with the AMI in the specified Region.
For more information, see the  LicenseConfiguration API: https://docs.aws.amazon.com/license-manager/latest/APIReference/API_LicenseConfiguration.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-licenseconfigurationarns
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ImageBuilder.DistributionConfiguration.Distribution
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html)

