# Add-VSPinpointEmailConfigurationSetTrackingOptions

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSet.TrackingOptions resource property to the template.
An object that defines the tracking options for a configuration set.
When you use Amazon Pinpoint to send an email, it contains an invisible image that's used to track when recipients open your email.
If your email contains links, those links are changed slightly in order to track when recipients click them.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetTrackingOptions [[-CustomRedirectDomain] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSet.TrackingOptions resource property to the template.
An object that defines the tracking options for a configuration set.
When you use Amazon Pinpoint to send an email, it contains an invisible image that's used to track when recipients open your email.
If your email contains links, those links are changed slightly in order to track when recipients click them.

These images and links include references to a domain operated by AWS.
You can optionally configure Amazon Pinpoint to use a domain that you operate for these images and links.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CustomRedirectDomain
The domain that you want to use for tracking open and click events.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html#cfn-pinpointemail-configurationset-trackingoptions-customredirectdomain
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.PinpointEmail.ConfigurationSet.TrackingOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html)

