# Add-VSCodePipelineWebhookWebhookFilterRule

## SYNOPSIS
Adds an AWS::CodePipeline::Webhook.WebhookFilterRule resource property to the template.
The event criteria that specify when a webhook notification is sent to your URL.

## SYNTAX

```
Add-VSCodePipelineWebhookWebhookFilterRule [-JsonPath] <Object> [[-MatchEquals] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Webhook.WebhookFilterRule resource property to the template.
The event criteria that specify when a webhook notification is sent to your URL.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -JsonPath
A JsonPath expression that will be applied to the body/payload of the webhook.
The value selected by the JsonPath expression must match the value specified in the MatchEquals field, otherwise the request will be ignored.
For more information about JsonPath expressions, see Java JsonPath implementation: https://github.com/json-path/JsonPath in GitHub.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-jsonpath
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MatchEquals
The value selected by the JsonPath expression must match what is supplied in the MatchEquals field, otherwise the request will be ignored.
Properties from the target action configuration can be included as placeholders in this value by surrounding the action configuration key with curly braces.
For example, if the value supplied here is "refs/heads/{Branch}" and the target action has an action configuration property called "Branch" with a value of "master", the MatchEquals value will be evaluated as "refs/heads/master".
For a list of action configuration properties for built-in action types, see Pipeline Structure Reference Action Requirements: https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-matchequals
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodePipeline.Webhook.WebhookFilterRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html)

