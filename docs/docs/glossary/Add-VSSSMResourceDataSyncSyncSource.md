# Add-VSSSMResourceDataSyncSyncSource

## SYNOPSIS
Adds an AWS::SSM::ResourceDataSync.SyncSource resource property to the template.
Information about the source of the data included in the resource data sync.

## SYNTAX

```
Add-VSSSMResourceDataSyncSyncSource [-SourceType] <Object> [[-AwsOrganizationsSource] <Object>]
 [[-IncludeFutureRegions] <Object>] [-SourceRegions] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::ResourceDataSync.SyncSource resource property to the template.
Information about the source of the data included in the resource data sync.

## PARAMETERS

### -SourceType
The type of data source for the resource data sync.
SourceType is either AwsOrganizations if an organization is present in AWS Organizations or singleAccountMultiRegions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-sourcetype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AwsOrganizationsSource
Information about the AwsOrganizationsSource resource data sync source.
A sync source of this type can synchronize data from AWS Organizations.

Type: AwsOrganizationsSource
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-awsorganizationssource
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

### -IncludeFutureRegions
Whether to automatically synchronize and aggregate data from new AWS Regions when those Regions come online.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-includefutureregions
PrimitiveType: Boolean
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

### -SourceRegions
The SyncSource AWS Regions included in the resource data sync.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-sourceregions
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.ResourceDataSync.SyncSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html)

