# Add-VSIoTAnalyticsDatastoreDatastoreStorage

## SYNOPSIS
Adds an AWS::IoTAnalytics::Datastore.DatastoreStorage resource property to the template.
Where data store data is stored.

## SYNTAX

```
Add-VSIoTAnalyticsDatastoreDatastoreStorage [[-CustomerManagedS3] <Object>] [[-ServiceManagedS3] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Datastore.DatastoreStorage resource property to the template.
Where data store data is stored.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CustomerManagedS3
Use this to store data store data in an S3 bucket that you manage.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the data store.

Type: CustomerManagedS3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-customermanageds3
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
Use this to store data store data in an S3 bucket managed by the AWS IoT Analytics service.
The choice of service-managed or customer-managed S3 storage cannot be changed after creation of the data store.

Type: ServiceManagedS3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-servicemanageds3
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

### Vaporshell.Resource.IoTAnalytics.Datastore.DatastoreStorage
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html)

