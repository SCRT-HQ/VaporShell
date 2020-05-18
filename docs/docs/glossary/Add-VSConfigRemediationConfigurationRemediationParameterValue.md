# Add-VSConfigRemediationConfigurationRemediationParameterValue

## SYNOPSIS
Adds an AWS::Config::RemediationConfiguration.RemediationParameterValue resource property to the template.
The value is either a dynamic (resource value or a static value.
You must select either a dynamic value or a static value.

## SYNTAX

```
Add-VSConfigRemediationConfigurationRemediationParameterValue [[-ResourceValue] <Object>]
 [[-StaticValue] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::RemediationConfiguration.RemediationParameterValue resource property to the template.
The value is either a dynamic (resource value or a static value.
You must select either a dynamic value or a static value.

## PARAMETERS

### -ResourceValue
The value is dynamic and changes at run-time.

Type: ResourceValue
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-resourcevalue
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

### -StaticValue
The value is static and does not change at run-time.

Type: StaticValue
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-staticvalue
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

### Vaporshell.Resource.Config.RemediationConfiguration.RemediationParameterValue
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html)

