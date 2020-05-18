# Add-VSCodeDeployDeploymentGroupAlarm

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.Alarm resource property to the template.
The Alarm property type specifies a CloudWatch alarm to use for an AWS CodeDeploy deployment group.
The Alarm property of the  CodeDeploy DeploymentGroup AlarmConfiguration : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html property contains a list of Alarm property types.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupAlarm [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.Alarm resource property to the template.
The Alarm property type specifies a CloudWatch alarm to use for an AWS CodeDeploy deployment group.
The Alarm property of the  CodeDeploy DeploymentGroup AlarmConfiguration : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html property contains a list of Alarm property types.

## PARAMETERS

### -Name
The name of the alarm.
Maximum length is 255 characters.
Each alarm name can be used only once in a list of alarms.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html#cfn-codedeploy-deploymentgroup-alarm-name
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.Alarm
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html)

