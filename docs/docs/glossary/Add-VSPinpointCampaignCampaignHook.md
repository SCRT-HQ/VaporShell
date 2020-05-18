# Add-VSPinpointCampaignCampaignHook

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.CampaignHook resource property to the template.
Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign.

## SYNTAX

```
Add-VSPinpointCampaignCampaignHook [[-Mode] <Object>] [[-WebUrl] <Object>] [[-LambdaFunctionName] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.CampaignHook resource property to the template.
Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign.

## PARAMETERS

### -Mode
The mode that Amazon Pinpoint uses to invoke the AWS Lambda function.
Possible values are:
+  FILTER - Invoke the function to customize the segment that's used by a campaign.
+  DELIVERY - Deprecated Previously, invoked the function to send a campaign through a custom channel.
This functionality is not supported anymore.
To send a campaign through a custom channel, use the CustomDeliveryConfiguration and CampaignCustomMessage objects of the campaign.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-mode
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

### -WebUrl
The web URL that Amazon Pinpoint calls to invoke the AWS Lambda function over HTTPS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-weburl
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

### -LambdaFunctionName
The name or Amazon Resource Name ARN of the AWS Lambda function that Amazon Pinpoint invokes to customize a segment for a campaign.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-lambdafunctionname
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

### Vaporshell.Resource.Pinpoint.Campaign.CampaignHook
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html)

