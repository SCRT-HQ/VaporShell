# Add-VSCodeDeployDeploymentGroupEC2TagSet

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSet resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances.
The deployment group includes only EC2 instances identified by all the tag groups.
EC2TagSet cannot be used in the same template as EC2TagFilter.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupEC2TagSet [[-Ec2TagSetList] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSet resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances.
The deployment group includes only EC2 instances identified by all the tag groups.
EC2TagSet cannot be used in the same template as EC2TagFilter.

For information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html.

## PARAMETERS

### -Ec2TagSetList
The EC2 tags that are already applied to EC2 instances that you want to include in the deployment group.
CodeDeploy includes all EC2 instances identified by any of the tags you specify in this deployment group.
Duplicates are not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html#cfn-codedeploy-deploymentgroup-ec2tagset-ec2tagsetlist
DuplicatesAllowed: False
ItemType: EC2TagSetListObject
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSet
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html)

