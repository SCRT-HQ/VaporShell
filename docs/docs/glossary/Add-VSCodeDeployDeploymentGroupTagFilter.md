# Add-VSCodeDeployDeploymentGroupTagFilter

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.TagFilter resource property to the template.
TagFilter is a property type of the AWS::CodeDeploy::DeploymentGroup : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource that specifies which on-premises instances to associate with the deployment group.
To register on-premise instances with AWS CodeDeploy, see Configure Existing On-Premises Instances by Using AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-on-premises.html in the *AWS CodeDeploy User Guide*.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupTagFilter [[-Key] <Object>] [[-Type] <Object>] [[-Value] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.TagFilter resource property to the template.
TagFilter is a property type of the AWS::CodeDeploy::DeploymentGroup : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource that specifies which on-premises instances to associate with the deployment group.
To register on-premise instances with AWS CodeDeploy, see Configure Existing On-Premises Instances by Using AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-on-premises.html in the *AWS CodeDeploy User Guide*.

For more information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html in the *AWS CodeDeploy User Guide*.

## PARAMETERS

### -Key
The on-premises instance tag filter key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-key
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

### -Type
The on-premises instance tag filter type:
+ KEY_ONLY: Key only.
+ VALUE_ONLY: Value only.
+ KEY_AND_VALUE: Key and value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-type
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

### -Value
The on-premises instance tag filter value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-value
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.TagFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html)

