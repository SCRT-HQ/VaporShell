# Add-VSCodePipelineWebhookWebhookAuthConfiguration

## SYNOPSIS
Adds an AWS::CodePipeline::Webhook.WebhookAuthConfiguration resource property to the template.
The authentication applied to incoming webhook trigger requests.

## SYNTAX

```
Add-VSCodePipelineWebhookWebhookAuthConfiguration [[-AllowedIPRange] <Object>] [[-SecretToken] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Webhook.WebhookAuthConfiguration resource property to the template.
The authentication applied to incoming webhook trigger requests.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllowedIPRange
The property used to configure acceptance of webhooks within a specific IP range.
For IP, only the AllowedIPRange property must be set, and this property must be set to a valid CIDR range.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-allowediprange
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

### -SecretToken
The property used to configure GitHub authentication.
For GITHUB_HMAC, only the SecretToken property must be set.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-secrettoken
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

### Vaporshell.Resource.CodePipeline.Webhook.WebhookAuthConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html)

