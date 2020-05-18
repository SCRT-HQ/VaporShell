# Add-VSCodeDeployDeploymentGroupOnPremisesTagSet

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet resource property to the template.
The OnPremisesTagSet property type specifies a list containing other lists of on-premises instance tag groups.
In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupOnPremisesTagSet [[-OnPremisesTagSetList] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet resource property to the template.
The OnPremisesTagSet property type specifies a list containing other lists of on-premises instance tag groups.
In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

For more information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html in the *AWS CodeDeploy User Guide*.

OnPremisesTagSet is a property of the DeploymentGroup : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

## PARAMETERS

### -OnPremisesTagSetList
A list that contains other lists of on-premises instance tag groups.
For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.
Duplicates are not allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html#cfn-codedeploy-deploymentgroup-onpremisestagset-onpremisestagsetlist
DuplicatesAllowed: False
ItemType: OnPremisesTagSetListObject
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.OnPremisesTagSet
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html)

