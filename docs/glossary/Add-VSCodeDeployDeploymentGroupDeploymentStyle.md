# Add-VSCodeDeployDeploymentGroupDeploymentStyle

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.DeploymentStyle resource property to the template.
Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupDeploymentStyle [[-DeploymentOption] <Object>] [[-DeploymentType] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.DeploymentStyle resource property to the template.
Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeploymentOption
Indicates whether to route deployment traffic behind a load balancer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymentoption
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

### -DeploymentType
Indicates whether to run an in-place or blue/green deployment.
AWS CloudFormation supports blue/green deployments on AWS Lambda compute platforms only.
For more information about deploying on an AWS Lambda compute platform, see  Deployments on an AWS Lambda Compute Platform: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-steps.html#deployment-steps-lambda in the *AWS CodeDeploy User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymenttype
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.DeploymentStyle
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html)

