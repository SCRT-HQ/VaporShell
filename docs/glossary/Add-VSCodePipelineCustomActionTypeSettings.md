# Add-VSCodePipelineCustomActionTypeSettings

## SYNOPSIS
Adds an AWS::CodePipeline::CustomActionType.Settings resource property to the template.
Settings is a property of the AWS::CodePipeline::CustomActionType resource that provides URLs that users can access to view information about the CodePipeline custom action.

## SYNTAX

```
Add-VSCodePipelineCustomActionTypeSettings [[-EntityUrlTemplate] <Object>] [[-ExecutionUrlTemplate] <Object>]
 [[-RevisionUrlTemplate] <Object>] [[-ThirdPartyConfigurationUrl] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::CustomActionType.Settings resource property to the template.
Settings is a property of the AWS::CodePipeline::CustomActionType resource that provides URLs that users can access to view information about the CodePipeline custom action.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EntityUrlTemplate
The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system, such as the configuration page for an AWS CodeDeploy deployment group.
This link is provided as part of the action display within the pipeline.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-entityurltemplate
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

### -ExecutionUrlTemplate
The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system, such as console page for AWS CodeDeploy.
This link is shown on the pipeline view page in the AWS CodePipeline console and provides a link to the execution entity of the external action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-executionurltemplate
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

### -RevisionUrlTemplate
The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-revisionurltemplate
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

### -ThirdPartyConfigurationUrl
The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-thirdpartyconfigurationurl
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodePipeline.CustomActionType.Settings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html)

