# Add-VSSSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTask.MaintenanceWindowAutomationParameters resource property to the template.
The MaintenanceWindowAutomationParameters property type specifies the parameters for an AUTOMATION task type for a maintenance window task in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters [[-Parameters] <Object>]
 [[-DocumentVersion] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTask.MaintenanceWindowAutomationParameters resource property to the template.
The MaintenanceWindowAutomationParameters property type specifies the parameters for an AUTOMATION task type for a maintenance window task in AWS Systems Manager.

MaintenanceWindowAutomationParameters is a property of the TaskInvocationParameters: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Parameters
The parameters for the AUTOMATION task.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-parameters
PrimitiveType: Json
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

### -DocumentVersion
The version of an Automation document to use during task execution.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-documentversion
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

### Vaporshell.Resource.SSM.MaintenanceWindowTask.MaintenanceWindowAutomationParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html)

