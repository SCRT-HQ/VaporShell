# Add-VSPinpointPushTemplateDefaultPushNotificationTemplate

## SYNOPSIS
Adds an AWS::Pinpoint::PushTemplate.DefaultPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate DefaultPushNotificationTemplate resource defines the default settings and content for a message template that can be used in messages that are sent through a push notification channel.

## SYNTAX

```
Add-VSPinpointPushTemplateDefaultPushNotificationTemplate [[-Action] <Object>] [[-Title] <Object>]
 [[-Sound] <Object>] [[-Body] <Object>] [[-Url] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::PushTemplate.DefaultPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate DefaultPushNotificationTemplate resource defines the default settings and content for a message template that can be used in messages that are sent through a push notification channel.

## PARAMETERS

### -Action
The action to occur if a recipient taps a push notification that's based on the message template.
Valid values are:
+  OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background.
This is the default action.
+  DEEP_LINK - Your app opens and displays a designated user interface in the app.
This setting uses the deep-linking features of the iOS and Android platforms.
+  URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-action
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

### -Title
The title to use in push notifications that are based on the message template.
This title appears above the notification message on a recipient's device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-title
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

### -Sound
The sound to play when a recipient receives a push notification that's based on the message template.
You can use the default stream or specify the file name of a sound resource that's bundled in your app.
On an Android platform, the sound file must reside in /res/raw/.
For an iOS platform, this value is the key for the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container.
If the sound file can't be found or you specify default for the value, the system plays the default alert sound.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-sound
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

### -Body
The message body to use in push notifications that are based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-body
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

### -Url
The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-url
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.PushTemplate.DefaultPushNotificationTemplate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html)

