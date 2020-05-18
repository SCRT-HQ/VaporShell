# Add-VSCodeDeployDeploymentGroupLoadBalancerInfo

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template.
The LoadBalancerInfo property type specifies information about the load balancer or target group used for an AWS CodeDeploy deployment group.
For more information, see  Integrating CodeDeploy with Elastic Load Balancing : https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-elastic-load-balancing.html in the *AWS CodeDeploy User Guide*.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupLoadBalancerInfo [[-ElbInfoList] <Object>] [[-TargetGroupInfoList] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template.
The LoadBalancerInfo property type specifies information about the load balancer or target group used for an AWS CodeDeploy deployment group.
For more information, see  Integrating CodeDeploy with Elastic Load Balancing : https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-elastic-load-balancing.html in the *AWS CodeDeploy User Guide*.

For AWS CloudFormation to use the properties specified in LoadBalancerInfo, the DeploymentStyle.DeploymentOption property must be set to WITH_TRAFFIC_CONTROL.
If DeploymentStyle.DeploymentOption is not set to WITH_TRAFFIC_CONTROL, AWS CloudFormation ignores any settings specified in LoadBalancerInfo.

**Note**

AWS CloudFormation supports blue/green deployments on the AWS Lambda compute platform only.

LoadBalancerInfo is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

## PARAMETERS

### -ElbInfoList
An array that contains information about the load balancer to use for load balancing in a deployment.
In Elastic Load Balancing, load balancers are used with Classic Load Balancers.
Adding more than one load balancer to the array is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist
DuplicatesAllowed: False
ItemType: ELBInfo
Type: List
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

### -TargetGroupInfoList
An array that contains information about the target group to use for load balancing in a deployment.
In Elastic Load Balancing, target groups are used with Application Load Balancers.
Adding more than one target group to the array is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-targetgroupinfolist
DuplicatesAllowed: False
ItemType: TargetGroupInfo
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.LoadBalancerInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html)

