# Add-VSOpsWorksAppEnvironmentVariable

## SYNOPSIS
Adds an AWS::OpsWorks::App.EnvironmentVariable resource property to the template.
Represents an app's environment variable.

## SYNTAX

```
Add-VSOpsWorksAppEnvironmentVariable [-Key] <Object> [[-Secure] <Boolean>] [-Value] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::App.EnvironmentVariable resource property to the template.
Represents an app's environment variable.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Key
Required The environment variable's name, which can consist of up to 64 characters and must be specified.
The name can contain upper- and lowercase letters, numbers, and underscores _, but it must start with a letter or underscore.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-key
PrimitiveType: String
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

### -Secure
Optional Whether the variable's value will be returned by the DescribeApps: https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeApps action.
To conceal an environment variable's value, set Secure to true.
DescribeApps then returns *****FILTERED***** instead of the actual value.
The default value for Secure is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-secure
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
Optional The environment variable's value, which can be left empty.
If you specify a value, it can contain up to 256 characters, which must all be printable.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#value
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

### Vaporshell.Resource.OpsWorks.App.EnvironmentVariable
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html)

