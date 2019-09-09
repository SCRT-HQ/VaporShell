# Add-VSMediaLiveChannelNetworkInputSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.NetworkInputSettings resource property to the template.
Information about how to connect to the upstream system.

## SYNTAX

```
Add-VSMediaLiveChannelNetworkInputSettings [[-ServerValidation] <Object>] [[-HlsInputSettings] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.NetworkInputSettings resource property to the template.
Information about how to connect to the upstream system.

The parent of this entity is InputSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServerValidation
Checks HTTPS server certificates.
When set to checkCryptographyOnly, cryptography in the certificate is checked, but not the server's name.
Certain subdomains notably S3 buckets that use dots in the bucket name don't strictly match the corresponding certificate's wildcard pattern and would otherwise cause the channel to error.
This setting is ignored for protocols that do not use HTTPS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-servervalidation
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

### -HlsInputSettings
Information about how to connect to the upstream system.

Type: HlsInputSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-hlsinputsettings
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

### Vaporshell.Resource.MediaLive.Channel.NetworkInputSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html)

