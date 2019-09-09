# Add-VSCodeDeployDeploymentGroupDeployment

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.Deployment resource property to the template.
Deployment is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource that specifies an AWS CodeDeploy application revision to be deployed to instances in the deployment group.
If you specify an application revision, your target revision is deployed as soon as the provisioning process is complete.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupDeployment [[-Description] <Object>]
 [[-IgnoreApplicationStopFailures] <Boolean>] [-Revision] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.Deployment resource property to the template.
Deployment is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource that specifies an AWS CodeDeploy application revision to be deployed to instances in the deployment group.
If you specify an application revision, your target revision is deployed as soon as the provisioning process is complete.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Description
A comment about the deployment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description
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

### -IgnoreApplicationStopFailures
If true, then if an ApplicationStop, BeforeBlockTraffic, or AfterBlockTraffic deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event.
For example, if ApplicationStop fails, the deployment continues with DownloadBundle.
If BeforeBlockTraffic fails, the deployment continues with BlockTraffic.
If AfterBlockTraffic fails, the deployment continues with ApplicationStop.
If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails.
If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.
During a deployment, the AWS CodeDeploy agent runs the scripts specified for ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic in the AppSpec file from the previous successful deployment.
All other scripts are run from the AppSpec file in the current deployment.
If one of these scripts contains an error and does not run successfully, the deployment can fail.
If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use ignoreApplicationStopFailures to specify that the ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic failures should be ignored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Revision
Information about the location of stored application artifacts and the service from which to retrieve them.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision
Type: RevisionLocation
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.Deployment
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html)

