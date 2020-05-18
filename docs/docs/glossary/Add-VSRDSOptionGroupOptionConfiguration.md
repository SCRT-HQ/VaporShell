# Add-VSRDSOptionGroupOptionConfiguration

## SYNOPSIS
Adds an AWS::RDS::OptionGroup.OptionConfiguration resource property to the template.
The OptionConfiguration property type specifies an individual option, and its settings, within an AWS::RDS::OptionGroup resource.

## SYNTAX

```
Add-VSRDSOptionGroupOptionConfiguration [[-DBSecurityGroupMemberships] <Object>] [-OptionName] <Object>
 [[-OptionSettings] <Object>] [[-OptionVersion] <Object>] [[-Port] <Object>]
 [[-VpcSecurityGroupMemberships] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::OptionGroup.OptionConfiguration resource property to the template.
The OptionConfiguration property type specifies an individual option, and its settings, within an AWS::RDS::OptionGroup resource.

## PARAMETERS

### -DBSecurityGroupMemberships
A list of DBSecurityGroupMemebrship name strings used for this option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-dbsecuritygroupmemberships
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### -OptionName
The configuration of options to include in a group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OptionSettings
The option settings to include in an option group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionsettings
DuplicatesAllowed: False
ItemType: OptionSetting
Type: List
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

### -OptionVersion
The version for the option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfiguration-optionversion
PrimitiveType: String
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

### -Port
The optional port for the option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-port
PrimitiveType: Integer
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

### -VpcSecurityGroupMemberships
A list of VpcSecurityGroupMembership name strings used for this option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-vpcsecuritygroupmemberships
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.OptionGroup.OptionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html)

