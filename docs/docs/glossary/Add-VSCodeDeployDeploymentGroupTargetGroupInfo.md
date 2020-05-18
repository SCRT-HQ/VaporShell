# Add-VSCodeDeployDeploymentGroupTargetGroupInfo

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.TargetGroupInfo resource property to the template.
The TargetGroupInfo property type specifies information about a target group in Elastic Load Balancing to use in a deployment.
Instances are registered as targets in a target group, and traffic is routed to the target group.
For more information, see  TargetGroupInfo: https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_TargetGroupInfo.html in the *AWS CodeDeploy API Reference*

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupTargetGroupInfo [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.TargetGroupInfo resource property to the template.
The TargetGroupInfo property type specifies information about a target group in Elastic Load Balancing to use in a deployment.
Instances are registered as targets in a target group, and traffic is routed to the target group.
For more information, see  TargetGroupInfo: https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_TargetGroupInfo.html in the *AWS CodeDeploy API Reference*

If you specify the TargetGroupInfo property, the DeploymentStyle.DeploymentOption property must be set to WITH_TRAFFIC_CONTROL for CodeDeploy to route your traffic using the specified target groups.

TargetGroupInfo is a property of the LoadBalancerInfo: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html property type.

## PARAMETERS

### -Name
For blue/green deployments, the name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with.
For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
No duplicates allowed.
AWS CloudFormation supports blue/green deployments on AWS Lambda compute platforms only.
This value cannot exceed 32 characters, so you should use the Name property of the target group, or the TargetGroupName attribute with the Fn::GetAtt intrinsic function, as shown in the following example.
Don't use the group's Amazon Resource Name ARN or TargetGroupFullName attribute.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html#cfn-codedeploy-deploymentgroup-targetgroupinfo-name
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.TargetGroupInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html)

