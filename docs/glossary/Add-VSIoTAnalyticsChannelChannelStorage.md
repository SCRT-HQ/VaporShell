# Add-VSIoTAnalyticsChannelChannelStorage

## SYNOPSIS
Adds an AWS::IoTAnalytics::Channel.ChannelStorage resource property to the template.
Where channel data is stored.

## SYNTAX

```
Add-VSIoTAnalyticsChannelChannelStorage [[-CustomerManagedS3] <Object>] [[-ServiceManagedS3] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Channel.ChannelStorage resource property to the template.
Where channel data is stored.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CustomerManagedS3
Use this to store channel data in an S3 bucket that you manage.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the channel.

Type: CustomerManagedS3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-customermanageds3
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

### -ServiceManagedS3
Use this to store channel data in an S3 bucket managed by the AWS IoT Analytics service.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the channel.

Type: ServiceManagedS3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-servicemanageds3
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

### Vaporshell.Resource.IoTAnalytics.Channel.ChannelStorage
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html)

