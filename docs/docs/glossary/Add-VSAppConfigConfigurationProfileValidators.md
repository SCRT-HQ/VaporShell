# Add-VSAppConfigConfigurationProfileValidators

## SYNOPSIS
Adds an AWS::AppConfig::ConfigurationProfile.Validators resource property to the template.
A validator provides a syntactic or semantic check to ensure the configuration you want to deploy functions as intended.
To validate your application configuration data, you provide a schema or a Lambda function that runs against the configuration.
The configuration deployment or update can only proceed when the configuration data is valid.

## SYNTAX

```
Add-VSAppConfigConfigurationProfileValidators [[-Type] <Object>] [[-Content] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppConfig::ConfigurationProfile.Validators resource property to the template.
A validator provides a syntactic or semantic check to ensure the configuration you want to deploy functions as intended.
To validate your application configuration data, you provide a schema or a Lambda function that runs against the configuration.
The configuration deployment or update can only proceed when the configuration data is valid.

## PARAMETERS

### -Type
AppConfig supports validators of type JSON_SCHEMA and LAMBDA

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-type
PrimitiveType: String
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

### -Content
Either the JSON Schema content or the Amazon Resource Name ARN of an AWS Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-content
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppConfig.ConfigurationProfile.Validators
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html)

