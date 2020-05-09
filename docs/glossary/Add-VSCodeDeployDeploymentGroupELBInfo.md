# Add-VSCodeDeployDeploymentGroupELBInfo

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.ELBInfo resource property to the template.
The ELBInfo property type specifies information about the Elastic Load Balancing load balancer used for an AWS CodeDelpoy deployment group.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupELBInfo [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.ELBInfo resource property to the template.
The ELBInfo property type specifies information about the Elastic Load Balancing load balancer used for an AWS CodeDelpoy deployment group.

If you specify the ELBInfo property, the DeploymentStyle.DeploymentOption property must be set to WITH_TRAFFIC_CONTROL for AWS CodeDeploy to route your traffic using the specified load balancers.

ELBInfo is a property of the AWS CodeDeploy DeploymentGroup LoadBalancerInfo : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html property type.

## PARAMETERS

### -Name
For blue/green deployments, the name of the load balancer that is used to route traffic from original instances to replacement instances in a blue/green deployment.
For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment is complete.
AWS CloudFormation supports blue/green deployments on AWS Lambda compute platforms only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html#cfn-codedeploy-deploymentgroup-elbinfo-name
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.ELBInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html)

