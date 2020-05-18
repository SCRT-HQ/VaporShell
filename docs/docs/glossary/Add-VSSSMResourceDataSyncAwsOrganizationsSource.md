# Add-VSSSMResourceDataSyncAwsOrganizationsSource

## SYNOPSIS
Adds an AWS::SSM::ResourceDataSync.AwsOrganizationsSource resource property to the template.
Information about the AwsOrganizationsSource resource data sync source.
A sync source of this type can synchronize data from AWS Organizations or, if an AWS Organization is not present, from multiple AWS Regions.

## SYNTAX

```
Add-VSSSMResourceDataSyncAwsOrganizationsSource [-OrganizationSourceType] <Object>
 [[-OrganizationalUnits] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::ResourceDataSync.AwsOrganizationsSource resource property to the template.
Information about the AwsOrganizationsSource resource data sync source.
A sync source of this type can synchronize data from AWS Organizations or, if an AWS Organization is not present, from multiple AWS Regions.

## PARAMETERS

### -OrganizationSourceType
If an AWS Organization is present, this is either OrganizationalUnits or EntireOrganization.
For OrganizationalUnits, the data is aggregated from a set of organization units.
For EntireOrganization, the data is aggregated from the entire AWS Organization.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationsourcetype
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

### -OrganizationalUnits
The AWS Organizations organization units included in the sync.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationalunits
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

### Vaporshell.Resource.SSM.ResourceDataSync.AwsOrganizationsSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html)

