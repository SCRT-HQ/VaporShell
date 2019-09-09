# Add-VSGlueMLTransformGlueTables

## SYNOPSIS
Adds an AWS::Glue::MLTransform.GlueTables resource property to the template.
The database and table in the AWS Glue Data Catalog that is used for input or output data.

## SYNTAX

```
Add-VSGlueMLTransformGlueTables [[-ConnectionName] <Object>] [-TableName] <Object> [-DatabaseName] <Object>
 [[-CatalogId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::MLTransform.GlueTables resource property to the template.
The database and table in the AWS Glue Data Catalog that is used for input or output data.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ConnectionName
The name of the connection to the AWS Glue Data Catalog.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-connectionname
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

### -TableName
A table name in the AWS Glue Data Catalog.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-tablename
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
A database name in the AWS Glue Data Catalog.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-databasename
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CatalogId
A unique identifier for the AWS Glue Data Catalog.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-catalogid
PrimitiveType: String
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

### Vaporshell.Resource.Glue.MLTransform.GlueTables
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html)

