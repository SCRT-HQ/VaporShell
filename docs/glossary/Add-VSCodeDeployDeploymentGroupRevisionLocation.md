# Add-VSCodeDeployDeploymentGroupRevisionLocation

## SYNOPSIS
Adds an AWS::CodeDeploy::DeploymentGroup.RevisionLocation resource property to the template.
RevisionLocation is a property that defines the location of the CodeDeploy application revision to deploy.

## SYNTAX

```
Add-VSCodeDeployDeploymentGroupRevisionLocation [[-GitHubLocation] <Object>] [[-RevisionType] <Object>]
 [[-S3Location] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeDeploy::DeploymentGroup.RevisionLocation resource property to the template.
RevisionLocation is a property that defines the location of the CodeDeploy application revision to deploy.

## PARAMETERS

### -GitHubLocation
Information about the location of application artifacts stored in GitHub.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation
Type: GitHubLocation
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

### -RevisionType
The type of application revision:
+ S3: An application revision stored in Amazon S3.
+ GitHub: An application revision stored in GitHub EC2/On-premises deployments only.
+ String: A YAML-formatted or JSON-formatted string AWS Lambda deployments only.
+ AppSpecContent: An AppSpecContent object that contains the contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment.
The content is formatted as JSON or YAML stored as a RawString.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-revisiontype
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

### -S3Location
Information about the location of a revision stored in Amazon S3.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location
Type: S3Location
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

### Vaporshell.Resource.CodeDeploy.DeploymentGroup.RevisionLocation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html)

