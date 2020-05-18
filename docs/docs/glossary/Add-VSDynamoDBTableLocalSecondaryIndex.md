# Add-VSDynamoDBTableLocalSecondaryIndex

## SYNOPSIS
Adds an AWS::DynamoDB::Table.LocalSecondaryIndex resource property to the template.
Represents the properties of a local secondary index.

## SYNTAX

```
Add-VSDynamoDBTableLocalSecondaryIndex [-IndexName] <Object> [-KeySchema] <Object> [-Projection] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.LocalSecondaryIndex resource property to the template.
Represents the properties of a local secondary index.

## PARAMETERS

### -IndexName
The name of the local secondary index.
The name must be unique among all other indexes on this table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-indexname
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

### -KeySchema
The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:
+  HASH - partition key
+  RANGE - sort key
The partition key of an item is also known as its *hash attribute*.
The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
The sort key of an item is also known as its *range attribute*.
The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-keyschema
DuplicatesAllowed: False
ItemType: KeySchema
Type: List
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

### -Projection
Represents attributes that are copied projected from the table into the local secondary index.
These are in addition to the primary key attributes and index key attributes, which are automatically projected.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-projection
Type: Projection
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DynamoDB.Table.LocalSecondaryIndex
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html)

