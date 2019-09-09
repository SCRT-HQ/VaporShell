# Add-VSSSMMaintenanceWindowTaskTarget

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTask.Target resource property to the template.
The Target property type specifies targets (either instances or window target IDs.
You specify instances by using Key=InstanceIds,Values=\<instanceid1\>,\<instanceid2\>.
You specify window target IDs using Key=WindowTargetIds,Values=\<window-target-id-1\>,\<window-target-id-2\> for a maintenance window task in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTaskTarget [[-Values] <Object>] [-Key] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTask.Target resource property to the template.
The Target property type specifies targets (either instances or window target IDs.
You specify instances by using Key=InstanceIds,Values=\<instanceid1\>,\<instanceid2\>.
You specify window target IDs using Key=WindowTargetIds,Values=\<window-target-id-1\>,\<window-target-id-2\> for a maintenance window task in AWS Systems Manager.

Target is a property of the AWS::SSM::MaintenanceWindowTask: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Values
User-defined criteria that maps to Key.
For example, if you specify InstanceIds, you can specify i-1234567890abcdef0,i-9876543210abcdef0 to run a command on two EC2 instances.
For more information about how to target instances within a maintenance window task, see About 'register-task-with-maintenance-window' Options and Values: https://docs.aws.amazon.com/systems-manager/latest/userguide/register-tasks-options.html in the *AWS Systems Manager User Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-values
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

### -Key
User-defined criteria for sending commands that target instances that meet the criteria.
Key can be InstanceIds or WindowTargetIds.
For more information about how to target instances within a maintenance window task, see About 'register-task-with-maintenance-window' Options and Values: https://docs.aws.amazon.com/systems-manager/latest/userguide/register-tasks-options.html in the *AWS Systems Manager User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-key
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.MaintenanceWindowTask.Target
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html)

