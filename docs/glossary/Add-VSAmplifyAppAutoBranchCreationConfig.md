# Add-VSAmplifyAppAutoBranchCreationConfig

## SYNOPSIS
Adds an AWS::Amplify::App.AutoBranchCreationConfig resource property to the template.
Use the AutoBranchCreationConfig property type to automatically create branches that match a certain pattern.

## SYNTAX

```
Add-VSAmplifyAppAutoBranchCreationConfig [[-EnvironmentVariables] <Object>]
 [[-EnableAutoBranchCreation] <Object>] [[-PullRequestEnvironmentName] <Object>]
 [[-AutoBranchCreationPatterns] <Object>] [[-EnablePullRequestPreview] <Object>] [[-EnableAutoBuild] <Object>]
 [[-BuildSpec] <Object>] [[-Stage] <Object>] [[-BasicAuthConfig] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Amplify::App.AutoBranchCreationConfig resource property to the template.
Use the AutoBranchCreationConfig property type to automatically create branches that match a certain pattern.

## PARAMETERS

### -EnvironmentVariables
Environment variables for the auto created branch.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-environmentvariables
ItemType: EnvironmentVariable
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

### -EnableAutoBranchCreation
Enables automated branch creation for the Amplify app.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobranchcreation
PrimitiveType: Boolean
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

### -PullRequestEnvironmentName
If pull request previews are enabled, you can use this property to specify a dedicated backend environment for your previews.
For example, you could specify an environment named prod, test, or dev that you initialized with the Amplify CLI.
To enable pull request previews, set the EnablePullRequestPreview property to true.
If you don't specify an environment, the Amplify Console provides backend support for each preview by automatically provisioning a temporary backend environment.
Amplify Console deletes this environment when the pull request is closed.
For more information about creating backend environments, see Feature Branch Deployments and Team Workflows: https://docs.aws.amazon.com/amplify/latest/userguide/multi-environments.html in the *AWS Amplify Console User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-pullrequestenvironmentname
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

### -AutoBranchCreationPatterns
Automated branch creation glob patterns for the Amplify app.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-autobranchcreationpatterns
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnablePullRequestPreview
Sets whether pull request previews are enabled for each branch that Amplify Console automatically creates for your app.
Amplify Console creates previews by deploying your app to a unique URL whenever a pull request is opened for the branch.
Development and QA teams can use this preview to test the pull request before it's merged into a production or integration branch.
To provide backend support for your preview, the Amplify Console automatically provisions a temporary backend environment that it deletes when the pull request is closed.
If you want to specify a dedicated backend environment for your previews, use the PullRequestEnvironmentName property.
For more information, see Web Previews: https://docs.aws.amazon.com/amplify/latest/userguide/pr-previews.html in the *AWS Amplify Console User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enablepullrequestpreview
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableAutoBuild
Enables auto building for the auto created branch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobuild
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildSpec
Build spec for the auto created branch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-buildspec
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Stage
Stage for the auto created branch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-stage
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BasicAuthConfig
Sets password protection for your auto created branch.

Type: BasicAuthConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-basicauthconfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Amplify.App.AutoBranchCreationConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html)

