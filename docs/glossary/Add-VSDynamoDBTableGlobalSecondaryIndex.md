# Add-VSDynamoDBTableGlobalSecondaryIndex

## SYNOPSIS
Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template.
Represents the properties of a global secondary index.

## SYNTAX

```
Add-VSDynamoDBTableGlobalSecondaryIndex [-IndexName] <Object> [-KeySchema] <Object> [-Projection] <Object>
 [[-ProvisionedThroughput] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template.
Represents the properties of a global secondary index.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -IndexName
The name of the global secondary index.
The name must be unique among all other indexes on this table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-indexname
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
The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:
+  HASH - partition key
+  RANGE - sort key
The partition key of an item is also known as its *hash attribute*.
The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
The sort key of an item is also known as its *range attribute*.
The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-keyschema
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
Represents attributes that are copied projected from the table into the global secondary index.
These are in addition to the primary key attributes and index key attributes, which are automatically projected.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-projection
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

### -ProvisionedThroughput
Represents the provisioned throughput settings for the specified global secondary index.
For current minimum and maximum provisioned throughput values, see Limits: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html in the *Amazon DynamoDB Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-provisionedthroughput
Type: ProvisionedThroughput
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

### Vaporshell.Resource.DynamoDB.Table.GlobalSecondaryIndex
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html)

