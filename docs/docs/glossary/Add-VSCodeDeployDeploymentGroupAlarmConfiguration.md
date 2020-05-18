# Add-VSCodeDeployDeploymentGroupAlarmConfiguration

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.AlarmConfiguration resource property to the template.
The AlarmConfiguration property type configuresCloudWatch alarms for an AWS CodeDeploy deployment group.
AlarmConfiguration is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupAlarmConfiguration [[-Alarms] <Object>] [[-Enabled] <Object>]
 [[-IgnorePollAlarmFailure] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.AlarmConfiguration resource property to the template.
The AlarmConfiguration property type configuresCloudWatch alarms for an AWS CodeDeploy deployment group.
AlarmConfiguration is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

## PARAMETERS

### -Alarms
A list of alarms configured for the deployment group.
A maximum of 10 alarms can be added to a deployment group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-alarms
DuplicatesAllowed: False
ItemType: Alarm
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

### -Enabled
Indicates whether the alarm configuration is enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-enabled
PrimitiveType: Boolean
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

### -IgnorePollAlarmFailure
Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch.
The default value is false.
+  true: The deployment proceeds even if alarm status information can't be retrieved from Amazon CloudWatch.
+  false: The deployment stops if alarm status information can't be retrieved from Amazon CloudWatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-ignorepollalarmfailure
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.AlarmConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html)

