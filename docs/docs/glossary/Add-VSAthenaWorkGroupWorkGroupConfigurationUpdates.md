# Add-VSAthenaWorkGroupWorkGroupConfigurationUpdates

## SYNOPSIS
Adds an AWS::Athena::WorkGroup.WorkGroupConfigurationUpdates resource property to the template.
The configuration information that will be updated for this workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, whether the workgroup settings override the client-side settings, and the data usage limit for the amount of bytes scanned per query, if it is specified.

## SYNTAX

```
Add-VSAthenaWorkGroupWorkGroupConfigurationUpdates [[-BytesScannedCutoffPerQuery] <Object>]
 [[-EnforceWorkGroupConfiguration] <Object>] [[-PublishCloudWatchMetricsEnabled] <Object>]
 [[-RequesterPaysEnabled] <Object>] [[-ResultConfigurationUpdates] <Object>]
 [[-RemoveBytesScannedCutoffPerQuery] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Athena::WorkGroup.WorkGroupConfigurationUpdates resource property to the template.
The configuration information that will be updated for this workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, whether the workgroup settings override the client-side settings, and the data usage limit for the amount of bytes scanned per query, if it is specified.

## PARAMETERS

### -BytesScannedCutoffPerQuery
The upper limit cutoff for the amount of bytes a single query in a workgroup is allowed to scan.
This property currently supports integer types.
Support for long values is planned.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-bytesscannedcutoffperquery
UpdateType: Mutable
PrimitiveType: Integer

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

### -EnforceWorkGroupConfiguration
If set to "true", the settings for the workgroup override client-side settings.
If set to "false" client-side settings are used.
For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration
UpdateType: Mutable
PrimitiveType: Boolean

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

### -PublishCloudWatchMetricsEnabled
Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-publishcloudwatchmetricsenabled
UpdateType: Mutable
PrimitiveType: Boolean

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

### -RequesterPaysEnabled
If set to true, allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries.
If set to false, workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error.
The default is false.
For more information about Requester Pays buckets, see Requester Pays Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-requesterpaysenabled
UpdateType: Mutable
PrimitiveType: Boolean

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

### -ResultConfigurationUpdates
The result configuration information about the queries in this workgroup that will be updated.
Includes the updated results location and an updated option for encrypting query results.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-resultconfigurationupdates
UpdateType: Mutable
Type: ResultConfigurationUpdates

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

### -RemoveBytesScannedCutoffPerQuery
Indicates that the data usage control limit per query is removed.
See BytesScannedCutoffPerQuery: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-bytesscannedcutoffperquery.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-removebytesscannedcutoffperquery
UpdateType: Mutable
PrimitiveType: Boolean

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

### Vaporshell.Resource.Athena.WorkGroup.WorkGroupConfigurationUpdates
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html)

