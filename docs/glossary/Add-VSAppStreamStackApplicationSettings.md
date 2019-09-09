# Add-VSAppStreamStackApplicationSettings

## SYNOPSIS
Adds an AWS::AppStream::Stack.ApplicationSettings resource property to the template.
The persistent application settings for users of a stack.

## SYNTAX

```
Add-VSAppStreamStackApplicationSettings [[-SettingsGroup] <Object>] [-Enabled] <Boolean> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppStream::Stack.ApplicationSettings resource property to the template.
The persistent application settings for users of a stack.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SettingsGroup
The path prefix for the S3 bucket where users' persistent application settings are stored.
You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-settingsgroup
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

### -Enabled
Enables or disables persistent application settings for users during their streaming sessions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-enabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppStream.Stack.ApplicationSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html)

