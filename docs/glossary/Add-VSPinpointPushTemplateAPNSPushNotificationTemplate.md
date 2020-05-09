# Add-VSPinpointPushTemplateAPNSPushNotificationTemplate

## SYNOPSIS
Adds an AWS::Pinpoint::PushTemplate.APNSPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate APNSPushNotificationTemplate resource defines channel-specific content and settings for a message template that can be used in push notifications that are sent through the APNs (Apple Push Notification service channel.

## SYNTAX

```
Add-VSPinpointPushTemplateAPNSPushNotificationTemplate [[-Action] <Object>] [[-MediaUrl] <Object>]
 [[-Title] <Object>] [[-Sound] <Object>] [[-Body] <Object>] [[-Url] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::PushTemplate.APNSPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate APNSPushNotificationTemplate resource defines channel-specific content and settings for a message template that can be used in push notifications that are sent through the APNs (Apple Push Notification service channel.

## PARAMETERS

### -Action
The action to occur if a recipient taps a push notification that's based on the message template.
Valid values are:
+  OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background.
This is the default action.
+  DEEP_LINK - Your app opens and displays a designated user interface in the app.
This setting uses the deep-linking features of the iOS platform.
+  URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-action
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

### -MediaUrl
The URL of an image or video to display in push notifications that are based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-mediaurl
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

### -Title
The title to use in push notifications that are based on the message template.
This title appears above the notification message on a recipient's device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-title
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

### -Sound
The key for the sound to play when the recipient receives a push notification that's based on the message template.
The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container.
If the sound file can't be found or you specify default for the value, the system plays the default alert sound.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-sound
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

### -Body
The message body to use in push notifications that are based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-body
PrimitiveType: String
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

### -Url
The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-url
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.PushTemplate.APNSPushNotificationTemplate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html)

