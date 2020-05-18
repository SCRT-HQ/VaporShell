# Add-VSCassandraTableColumn

## SYNOPSIS
Adds an AWS::Cassandra::Table.Column resource property to the template.
The name and data type of an individual column in a table.

## SYNTAX

```
Add-VSCassandraTableColumn [-ColumnName] <Object> [-ColumnType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cassandra::Table.Column resource property to the template.
The name and data type of an individual column in a table.

## PARAMETERS

### -ColumnName
The name of the column.
For more information, see Identifiers: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.elements.identifier in the *Amazon Keyspaces Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html#cfn-cassandra-table-column-columnname
UpdateType: Mutable
PrimitiveType: String

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

### -ColumnType
The data type of the column.
For more information, see Data Types: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types in the the *Amazon Keyspaces Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html#cfn-cassandra-table-column-columntype
UpdateType: Mutable
PrimitiveType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cassandra.Table.Column
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html)

