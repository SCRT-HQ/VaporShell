# Add-VSOpsWorksStackStackConfigurationManager

## SYNOPSIS
Adds an AWS::OpsWorks::Stack.StackConfigurationManager resource property to the template.
Describes the configuration manager.

## SYNTAX

```
Add-VSOpsWorksStackStackConfigurationManager [[-Name] <Object>] [[-Version] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Stack.StackConfigurationManager resource property to the template.
Describes the configuration manager.

## PARAMETERS

### -Name
The name.
This parameter must be set to "Chef".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-name
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

### -Version
The Chef version.
This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks.
The default value for Linux stacks is 11.4.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-version
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

### Vaporshell.Resource.OpsWorks.Stack.StackConfigurationManager
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html)

