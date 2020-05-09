# Add-VSCassandraTableClusteringKeyColumn

## SYNOPSIS
Adds an AWS::Cassandra::Table.ClusteringKeyColumn resource property to the template.
Defines an individual column within the clustering key.

## SYNTAX

```
Add-VSCassandraTableClusteringKeyColumn [-Column] <Object> [[-OrderBy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cassandra::Table.ClusteringKeyColumn resource property to the template.
Defines an individual column within the clustering key.

## PARAMETERS

### -Column
The name and data type of this clustering key column.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html#cfn-cassandra-table-clusteringkeycolumn-column
UpdateType: Immutable
Type: Column

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

### -OrderBy
The order in which this column's data will be stored:
+ ASC default - the column's data will be stored in ascending order.
+ DESC - the column's data will be stored in descending order.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html#cfn-cassandra-table-clusteringkeycolumn-orderby
UpdateType: Immutable
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Cassandra.Table.ClusteringKeyColumn
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html)

