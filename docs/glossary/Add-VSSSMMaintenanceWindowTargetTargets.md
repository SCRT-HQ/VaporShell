# Add-VSSSMMaintenanceWindowTargetTargets

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTarget.Targets resource property to the template.
The Targets property type specifies adding a target to a maintenance window target in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTargetTargets [[-Values] <Object>] [-Key] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTarget.Targets resource property to the template.
The Targets property type specifies adding a target to a maintenance window target in AWS Systems Manager.

Targets is a property of the AWS::SSM::MaintenanceWindowTarget: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Values
User-defined criteria that maps to Key.
For example, if you specified tag:ServerRole, you could specify value:WebServer to run a command on instances that include Amazon EC2 tags of ServerRole,WebServer.
For more information about how to send commands that target instances using Key,Value parameters, see Using Targets and Rate Controls to Send Commands to a Fleet: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html in the *AWS Systems Manager User Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values
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
Key can be tag:\<Amazon EC2 tag\> or InstanceIds.
For more information about how to send commands that target instances using Key,Value parameters, see Using Targets and Rate Controls to Send Commands to a Fleet: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting in the *AWS Systems Manager User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key
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

### Vaporshell.Resource.SSM.MaintenanceWindowTarget.Targets
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html)

