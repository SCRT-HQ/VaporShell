# Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.
The TaskInvocationParameters property type specifies the task execution parameters for a maintenance window task in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters [[-MaintenanceWindowRunCommandParameters] <Object>]
 [[-MaintenanceWindowAutomationParameters] <Object>] [[-MaintenanceWindowStepFunctionsParameters] <Object>]
 [[-MaintenanceWindowLambdaParameters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.
The TaskInvocationParameters property type specifies the task execution parameters for a maintenance window task in AWS Systems Manager.

TaskInvocationParameters is a property of the AWS::SSM::MaintenanceWindowTask: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MaintenanceWindowRunCommandParameters
The parameters for a RUN_COMMAND task type.

Type: MaintenanceWindowRunCommandParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
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

### -MaintenanceWindowAutomationParameters
The parameters for an AUTOMATION task type.

Type: MaintenanceWindowAutomationParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
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

### -MaintenanceWindowStepFunctionsParameters
The parameters for a STEP_FUNCTION task type.

Type: MaintenanceWindowStepFunctionsParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
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

### -MaintenanceWindowLambdaParameters
The parameters for a LAMBDA task type.

Type: MaintenanceWindowLambdaParameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html)

