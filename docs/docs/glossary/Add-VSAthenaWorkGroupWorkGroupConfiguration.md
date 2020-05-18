# Add-VSAthenaWorkGroupWorkGroupConfiguration

## SYNOPSIS
Adds an AWS::Athena::WorkGroup.WorkGroupConfiguration resource property to the template.
The configuration of the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether Amazon CloudWatch Metrics are enabled for the workgroup, and the limit for the amount of bytes scanned (cutoff per query, if it is specified.
The EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-enforceworkgroupconfiguration option determines whether workgroup settings override client-side query settings.

## SYNTAX

```
Add-VSAthenaWorkGroupWorkGroupConfiguration [[-BytesScannedCutoffPerQuery] <Object>]
 [[-EnforceWorkGroupConfiguration] <Object>] [[-PublishCloudWatchMetricsEnabled] <Object>]
 [[-RequesterPaysEnabled] <Object>] [[-ResultConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Athena::WorkGroup.WorkGroupConfiguration resource property to the template.
The configuration of the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether Amazon CloudWatch Metrics are enabled for the workgroup, and the limit for the amount of bytes scanned (cutoff per query, if it is specified.
The EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-enforceworkgroupconfiguration option determines whether workgroup settings override client-side query settings.

## PARAMETERS

### -BytesScannedCutoffPerQuery
The upper limit cutoff for the amount of bytes a single query in a workgroup is allowed to scan.
This property currently supports integer types.
Support for long values is planned.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-bytesscannedcutoffperquery
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
If set to "false", client-side settings are used.
For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-enforceworkgroupconfiguration
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
Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-publishcloudwatchmetricsenabled
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
If set to true, allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries.
If set to false, workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error.
The default is false.
For more information about Requester Pays buckets, see Requester Pays Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-requesterpaysenabled
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

### -ResultConfiguration
Specifies the location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.
For more information, see Working with Query Results, Output Files, and Query History: https://docs.aws.amazon.com/athena/latest/ug/querying.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-resultconfiguration
UpdateType: Mutable
Type: ResultConfiguration

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

### Vaporshell.Resource.Athena.WorkGroup.WorkGroupConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html)

