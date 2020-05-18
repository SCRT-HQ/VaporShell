# Add-VSCodeDeployDeploymentGroupEC2TagSetListObject

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances.
The deployment group includes only EC2 instances identified by all the tag groups.
Cannot be used in the same template as EC2TagFilters.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupEC2TagSetListObject [[-Ec2TagGroup] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances.
The deployment group includes only EC2 instances identified by all the tag groups.
Cannot be used in the same template as EC2TagFilters.

For more information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html in the *AWS CodeDeploy User Guide*.

EC2TagSet is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource type.

## PARAMETERS

### -Ec2TagGroup
A list that contains other lists of EC2 instance tag groups.
For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html#cfn-codedeploy-deploymentgroup-ec2tagsetlistobject-ec2taggroup
DuplicatesAllowed: False
ItemType: EC2TagFilter
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSetListObject
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html)

