# Add-VSLakeFormationPermissionsColumnWildcard

## SYNOPSIS
Adds an AWS::LakeFormation::Permissions.ColumnWildcard resource property to the template.
A wildcard object, consisting of an optional list of excluded column names or indexes.

## SYNTAX

```
Add-VSLakeFormationPermissionsColumnWildcard [[-ExcludedColumnNames] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::LakeFormation::Permissions.ColumnWildcard resource property to the template.
A wildcard object, consisting of an optional list of excluded column names or indexes.

## PARAMETERS

### -ExcludedColumnNames
Excludes column names.
Any column with this name will be excluded.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html#cfn-lakeformation-permissions-columnwildcard-excludedcolumnnames
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

### Vaporshell.Resource.LakeFormation.Permissions.ColumnWildcard
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html)

