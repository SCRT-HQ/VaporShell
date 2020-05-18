# Add-VSCodeDeployDeploymentGroupOnPremisesTagSetListObject

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSetListObject resource property to the template.
The OnPremisesTagSetListObject property type specifies lists of on-premises instance tag groups.
In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupOnPremisesTagSetListObject [[-OnPremisesTagGroup] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSetListObject resource property to the template.
The OnPremisesTagSetListObject property type specifies lists of on-premises instance tag groups.
In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

OnPremisesTagSetListObject is a property of the CodeDeploy DeploymentGroup OnPremisesTagSet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html property type.

## PARAMETERS

### -OnPremisesTagGroup
Information about groups of on-premises instance tags.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html#cfn-codedeploy-deploymentgroup-onpremisestagsetlistobject-onpremisestaggroup
DuplicatesAllowed: False
ItemType: TagFilter
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.OnPremisesTagSetListObject
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html)

