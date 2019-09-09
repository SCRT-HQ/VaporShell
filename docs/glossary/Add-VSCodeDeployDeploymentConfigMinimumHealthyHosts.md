# Add-VSCodeDeployDeploymentConfigMinimumHealthyHosts

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts resource property to the template.
MinimumHealthyHosts is a property of the DeploymentConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html resource that defines how many instances must remain healthy during an AWS CodeDeploy deployment.

## SYNTAX

```
Add-VSCodeDeployDeploymentConfigMinimumHealthyHosts [-Type] <Object> [-Value] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts resource property to the template.
MinimumHealthyHosts is a property of the DeploymentConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html resource that defines how many instances must remain healthy during an AWS CodeDeploy deployment.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The minimum healthy instance type:
+ HOST_COUNT: The minimum number of healthy instance as an absolute value.
+ FLEET_PERCENT: The minimum number of healthy instance as a percentage of the total number of instance in the deployment.
In an example of nine instance, if a HOST_COUNT of six is specified, deploy to up to three instances at a time.
The deployment is successful if six or more instances are deployed to successfully.
Otherwise, the deployment fails.
If a FLEET_PERCENT of 40 is specified, deploy to up to five instance at a time.
The deployment is successful if four or more instance are deployed to successfully.
Otherwise, the deployment fails.
In a call to GetDeploymentConfig, CodeDeployDefault.OneAtATime returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1.
This means a deployment to only one instance at a time.
You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.
In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy attempts to ensure that all instances but one are kept in a healthy state during the deployment.
Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment is still successful.
For more information, see AWS CodeDeploy Instance Health: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html in the *AWS CodeDeploy User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
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

### -Value
The minimum healthy instance value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentConfig.MinimumHealthyHosts
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html)

