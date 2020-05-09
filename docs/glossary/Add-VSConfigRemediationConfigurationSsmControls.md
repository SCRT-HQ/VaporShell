# Add-VSConfigRemediationConfigurationSsmControls

## SYNOPSIS
Adds an AWS::Config::RemediationConfiguration.SsmControls resource property to the template.
\<a name="aws-properties-config-remediationconfiguration-ssmcontrols-description"\>\</a\>The SsmControls property type specifies Not currently supported by AWS CloudFormation.
for an AWS::Config::RemediationConfiguration: aws-resource-config-remediationconfiguration.md.

## SYNTAX

```
Add-VSConfigRemediationConfigurationSsmControls [[-ErrorPercentage] <Object>]
 [[-ConcurrentExecutionRatePercentage] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::RemediationConfiguration.SsmControls resource property to the template.
\<a name="aws-properties-config-remediationconfiguration-ssmcontrols-description"\>\</a\>The SsmControls property type specifies Not currently supported by AWS CloudFormation.
for an AWS::Config::RemediationConfiguration: aws-resource-config-remediationconfiguration.md.

## PARAMETERS

### -ErrorPercentage
The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule.
You can specify a percentage of errors, for example 10%.
If you do not specifiy a percentage, the default is 50%.
For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-errorpercentage
PrimitiveType: Integer
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

### -ConcurrentExecutionRatePercentage
The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule.
You can specify a percentage, such as 10%.
The default value is 10.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-concurrentexecutionratepercentage
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.RemediationConfiguration.SsmControls
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html)

