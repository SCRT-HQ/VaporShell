# Add-VSLakeFormationPermissionsTableResource

## SYNOPSIS
Adds an AWS::LakeFormation::Permissions.TableResource resource property to the template.
A structure for the table object.
A table is a metadata definition that represents your data.
You can Grant and Revoke table privileges to a principal.

## SYNTAX

```
Add-VSLakeFormationPermissionsTableResource [[-DatabaseName] <Object>] [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::LakeFormation::Permissions.TableResource resource property to the template.
A structure for the table object.
A table is a metadata definition that represents your data.
You can Grant and Revoke table privileges to a principal.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DatabaseName
The name of the database for the table.
Unique to a Data Catalog.
A database is a set of associated table definitions organized into a logical group.
You can Grant and Revoke database privileges to a principal.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-databasename
PrimitiveType: String
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

### -Name
The name of the table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-name
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.LakeFormation.Permissions.TableResource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html)

