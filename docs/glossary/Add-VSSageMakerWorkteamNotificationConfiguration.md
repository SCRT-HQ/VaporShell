# Add-VSSageMakerWorkteamNotificationConfiguration

## SYNOPSIS
Adds an AWS::SageMaker::Workteam.NotificationConfiguration resource property to the template.
Configures SNS notifications of available or expiring work items for work teams.

## SYNTAX

```
Add-VSSageMakerWorkteamNotificationConfiguration [-NotificationTopicArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::Workteam.NotificationConfiguration resource property to the template.
Configures SNS notifications of available or expiring work items for work teams.

## PARAMETERS

### -NotificationTopicArn
The ARN for the SNS topic to which notifications should be published.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html#cfn-sagemaker-workteam-notificationconfiguration-notificationtopicarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.Workteam.NotificationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html)

