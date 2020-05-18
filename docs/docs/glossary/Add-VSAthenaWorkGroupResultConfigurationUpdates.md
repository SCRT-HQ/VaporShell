# Add-VSAthenaWorkGroupResultConfigurationUpdates

## SYNOPSIS
Adds an AWS::Athena::WorkGroup.ResultConfigurationUpdates resource property to the template.
The information about the updates in the query results, such as output location and encryption configuration for the query results.

## SYNTAX

```
Add-VSAthenaWorkGroupResultConfigurationUpdates [[-EncryptionConfiguration] <Object>]
 [[-OutputLocation] <Object>] [[-RemoveEncryptionConfiguration] <Object>] [[-RemoveOutputLocation] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Athena::WorkGroup.ResultConfigurationUpdates resource property to the template.
The information about the updates in the query results, such as output location and encryption configuration for the query results.

## PARAMETERS

### -EncryptionConfiguration
The encryption configuration for the query results.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-encryptionconfiguration
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
For more information, see Query Results: https://docs.aws.amazon.com/athena/latest/ug/querying.html If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup.
The "workgroup settings override" is specified in EnforceWorkGroupConfiguration true/false in the WorkGroupConfiguration.
See EnforceWorkGroupConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-outputlocation
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

### -RemoveEncryptionConfiguration
If set to "true", indicates that the previously-specified encryption configuration also known as the client-side setting for queries in this workgroup should be ignored and set to null.
If set to "false" or not set, and a value is present in the EncryptionConfiguration in ResultConfigurationUpdates the client-side setting, the EncryptionConfiguration in the workgroup's ResultConfiguration will be updated with the new value.
For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeencryptionconfiguration
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

### -RemoveOutputLocation
If set to "true", indicates that the previously-specified query results location also known as a client-side setting for queries in this workgroup should be ignored and set to null.
If set to "false" or not set, and a value is present in the OutputLocation in ResultConfigurationUpdates the client-side setting, the OutputLocation in the workgroup's ResultConfiguration will be updated with the new value.
For more information, see Workgroup Settings Override Client-Side Settings: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeoutputlocation
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Athena.WorkGroup.ResultConfigurationUpdates
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html)

