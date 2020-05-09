# Add-VSPinpointPushTemplateAndroidPushNotificationTemplate

## SYNOPSIS
Adds an AWS::Pinpoint::PushTemplate.AndroidPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate AndroidPushNotificationTemplate resource defines channel-specific content and settings for a message template that can be used in push notifications that are sent through the following channels: ADM (Amazon Device Messaging, Baidu (Baidu Cloud Push, or GCM (Firebase Cloud Messaging, formerly Google Cloud Messaging.

## SYNTAX

```
Add-VSPinpointPushTemplateAndroidPushNotificationTemplate [[-Action] <Object>] [[-ImageUrl] <Object>]
 [[-SmallImageIconUrl] <Object>] [[-Title] <Object>] [[-ImageIconUrl] <Object>] [[-Sound] <Object>]
 [[-Body] <Object>] [[-Url] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::PushTemplate.AndroidPushNotificationTemplate resource property to the template.
The AWS::Pinpoint::PushTemplate AndroidPushNotificationTemplate resource defines channel-specific content and settings for a message template that can be used in push notifications that are sent through the following channels: ADM (Amazon Device Messaging, Baidu (Baidu Cloud Push, or GCM (Firebase Cloud Messaging, formerly Google Cloud Messaging.

## PARAMETERS

### -Action
The action to occur if a recipient taps a push notification that's based on the message template.
Valid values are:
+  OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background.
This is the default action.
+  DEEP_LINK - Your app opens and displays a designated user interface in the app.
This action uses the deep-linking features of the Android platform.
+  URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-action
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

### -ImageUrl
The URL of an image to display in a push notification that's based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageurl
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

### -SmallImageIconUrl
The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-smallimageiconurl
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

### -Title
The title to use in a push notification that's based on the message template.
This title appears above the notification message on a recipient's device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-title
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

### -ImageIconUrl
The URL of the large icon image to display in the content view of a push notification that's based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageiconurl
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

### -Sound
The sound to play when a recipient receives a push notification that's based on the message template.
You can use the default stream or specify the file name of a sound resource that's bundled in your app.
On an Android platform, the sound file must reside in /res/raw/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-sound
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

### -Body
The message body to use in a push notification that's based on the message template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-body
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

### -Url
The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-url
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.PushTemplate.AndroidPushNotificationTemplate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html)

