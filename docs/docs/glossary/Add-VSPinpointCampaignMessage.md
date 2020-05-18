# Add-VSPinpointCampaignMessage

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.Message resource property to the template.
Specifies the content and settings for a push notification that's sent to recipients of a campaign.

## SYNTAX

```
Add-VSPinpointCampaignMessage [[-JsonBody] <Object>] [[-Action] <Object>] [[-MediaUrl] <Object>]
 [[-TimeToLive] <Object>] [[-ImageSmallIconUrl] <Object>] [[-ImageUrl] <Object>] [[-Title] <Object>]
 [[-ImageIconUrl] <Object>] [[-SilentPush] <Object>] [[-Body] <Object>] [[-RawContent] <Object>]
 [[-Url] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.Message resource property to the template.
Specifies the content and settings for a push notification that's sent to recipients of a campaign.

## PARAMETERS

### -JsonBody
The JSON payload to use for a silent push notification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-jsonbody
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

### -Action
The action to occur if a recipient taps the push notification.
Valid values are:
+  OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background.
This is the default action.
+  DEEP_LINK - Your app opens and displays a designated user interface in the app.
This setting uses the deep-linking features of iOS and Android.
+  URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-action
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

### -MediaUrl
The URL of the image or video to display in the push notification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-mediaurl
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

### -TimeToLive
The number of seconds that the push-notification service should keep the message, if the service is unable to deliver the notification the first time.
This value is converted to an expiration value when it's sent to a push-notification service.
If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.
This value doesn't apply to messages that are sent through the Amazon Device Messaging ADM service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-timetolive
PrimitiveType: Integer
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

### -ImageSmallIconUrl
The URL of the image to display as the small, push-notification icon, such as a small version of the icon for the app.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imagesmalliconurl
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

### -ImageUrl
The URL of an image to display in the push notification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageurl
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

### -Title
The title to display above the notification message on a recipient's device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-title
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

### -ImageIconUrl
The URL of the image to display as the push-notification icon, such as the icon for the app.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageiconurl
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

### -SilentPush
Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device.
Silent push notifications can be used for cases such as updating an app's configuration, displaying messages in an in-app message center, or supporting phone home functionality.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-silentpush
PrimitiveType: Boolean
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

### -Body
The body of the notification message.
The maximum number of characters is 200.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-body
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RawContent
The raw, JSON-formatted string to use as the payload for the notification message.
If specified, this value overrides all other content for the message.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-rawcontent
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Url
The URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-url
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.Campaign.Message
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html)

