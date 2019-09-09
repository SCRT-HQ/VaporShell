# Add-VSCodeDeployDeploymentGroupAutoRollbackConfiguration

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration resource property to the template.
The AutoRollbackConfiguration property type configures automatic rollback for an AWS CodeDeploy deployment group when a deployment is not completed successfully.
For more information, see Automatic Rollbacks: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployments-rollback-and-redeploy.html#deployments-rollback-and-redeploy-automatic-rollbacks in the *AWS CodeDeploy User Guide*.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupAutoRollbackConfiguration [[-Enabled] <Boolean>] [[-Events] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration resource property to the template.
The AutoRollbackConfiguration property type configures automatic rollback for an AWS CodeDeploy deployment group when a deployment is not completed successfully.
For more information, see Automatic Rollbacks: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployments-rollback-and-redeploy.html#deployments-rollback-and-redeploy-automatic-rollbacks in the *AWS CodeDeploy User Guide*.

AutoRollbackConfiguration is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Enabled
Indicates whether a defined automatic rollback configuration is currently enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-enabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Events
The event type or types that trigger a rollback.
Valid values are DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, or DEPLOYMENT_STOP_ON_REQUEST.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-events
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.AutoRollbackConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html)

