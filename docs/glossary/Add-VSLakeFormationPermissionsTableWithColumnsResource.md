# Add-VSLakeFormationPermissionsTableWithColumnsResource

## SYNOPSIS
Adds an AWS::LakeFormation::Permissions.TableWithColumnsResource resource property to the template.
A structure for a table with columns object.
This object is only used when granting a SELECT permission.

## SYNTAX

```
Add-VSLakeFormationPermissionsTableWithColumnsResource [[-ColumnNames] <Object>] [[-DatabaseName] <Object>]
 [[-Name] <Object>] [[-ColumnWildcard] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::LakeFormation::Permissions.TableWithColumnsResource resource property to the template.
A structure for a table with columns object.
This object is only used when granting a SELECT permission.

This object must take a value for at least one of ColumnsNames, ColumnsIndexes, or ColumnsWildcard.

## PARAMETERS

### -ColumnNames
The list of column names for the table.
At least one of ColumnNames or ColumnWildcard is required.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnnames
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

### -DatabaseName
The name of the database for the table with columns resource.
Unique to the Data Catalog.
A database is a set of associated table definitions organized into a logical group.
You can Grant and Revoke database privileges to a principal.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-databasename
PrimitiveType: String
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

### -Name
The name of the table resource.
A table is a metadata definition that represents your data.
You can Grant and Revoke table privileges to a principal.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-name
PrimitiveType: String
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

### -ColumnWildcard
A wildcard specified by a ColumnWildcard object.
At least one of ColumnNames or ColumnWildcard is required.

Type: ColumnWildcard
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnwildcard
UpdateType: Mutable

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

### Vaporshell.Resource.LakeFormation.Permissions.TableWithColumnsResource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html)

