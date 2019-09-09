# Add-VSGlueMLTransformInputRecordTables

## SYNOPSIS
Adds an AWS::Glue::MLTransform.InputRecordTables resource property to the template.
A list of AWS Glue table definitions used by the transform.

## SYNTAX

```
Add-VSGlueMLTransformInputRecordTables [[-GlueTables] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::MLTransform.InputRecordTables resource property to the template.
A list of AWS Glue table definitions used by the transform.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -GlueTables
The database and table in the AWS Glue Data Catalog that is used for input or output data.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html#cfn-glue-mltransform-inputrecordtables-gluetables
ItemType: GlueTables
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

### Vaporshell.Resource.Glue.MLTransform.InputRecordTables
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html)

