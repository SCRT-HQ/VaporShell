# Add-VSAthenaWorkGroupResultConfiguration

## SYNOPSIS
Adds an AWS::Athena::WorkGroup.ResultConfiguration resource property to the template.
The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.
These are known as "client-side settings".
If workgroup settings override client-side settings, then the query uses the workgroup settings.

## SYNTAX

```
Add-VSAthenaWorkGroupResultConfiguration [[-EncryptionConfiguration] <Object>] [[-OutputLocation] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Athena::WorkGroup.ResultConfiguration resource property to the template.
The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.
These are known as "client-side settings".
If workgroup settings override client-side settings, then the query uses the workgroup settings.

## PARAMETERS

### -EncryptionConfiguration
If query results are encrypted in Amazon S3, indicates the encryption option used for example, SSE-KMS or CSE-KMS and key information.
This is a client-side setting.
If workgroup settings override client-side settings, then the query uses the encryption configuration that is specified for the workgroup, and also uses the location for storing query results specified in the workgroup.
See EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration and Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html#cfn-athena-workgroup-resultconfiguration-encryptionconfiguration
UpdateType: Mutable
Type: EncryptionConfiguration

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

### -OutputLocation
The location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/.
To run a query, you must specify the query results location using either a client-side setting for individual queries or a location specified by the workgroup.
If workgroup settings override client-side settings, then the query uses the location specified for the workgroup.
If no query location is set, Athena issues an error.
For more information, see Working with Query Results, Output Files, and Query History: https://docs.aws.amazon.com/athena/latest/ug/querying.html and EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html#cfn-athena-workgroup-resultconfiguration-outputlocation
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.Athena.WorkGroup.ResultConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html)

