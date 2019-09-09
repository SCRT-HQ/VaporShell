# Add-VSGlueTableOrder

## SYNOPSIS
Adds an AWS::Glue::Table.Order resource property to the template.
Specifies the sort order of a sorted column.

## SYNTAX

```
Add-VSGlueTableOrder [-Column] <Object> [-SortOrder] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Table.Order resource property to the template.
Specifies the sort order of a sorted column.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Column
The name of the column.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-column
PrimitiveType: String
UpdateType: Mutable

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

### -SortOrder
Indicates that the column is sorted in ascending order == 1, or in descending order ==0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-sortorder
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Table.Order
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html)

