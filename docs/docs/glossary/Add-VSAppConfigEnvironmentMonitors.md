# Add-VSAppConfigEnvironmentMonitors

## SYNOPSIS
Adds an AWS::AppConfig::Environment.Monitors resource property to the template.
Amazon CloudWatch alarms to monitor during the deployment process.

## SYNTAX

```
Add-VSAppConfigEnvironmentMonitors [[-AlarmArn] <Object>] [[-AlarmRoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppConfig::Environment.Monitors resource property to the template.
Amazon CloudWatch alarms to monitor during the deployment process.

## PARAMETERS

### -AlarmArn
ARN of the Amazon CloudWatch alarm.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html#cfn-appconfig-environment-monitors-alarmarn
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

### -AlarmRoleArn
ARN of an IAM role for AppConfig to monitor AlarmArn.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html#cfn-appconfig-environment-monitors-alarmrolearn
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

### Vaporshell.Resource.AppConfig.Environment.Monitors
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html)

