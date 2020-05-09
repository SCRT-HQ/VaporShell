# Add-VSDynamoDBTableProjection

## SYNOPSIS
Adds an AWS::DynamoDB::Table.Projection resource property to the template.
Represents attributes that are copied (projected from the table into an index.
These are in addition to the primary key attributes and index key attributes, which are automatically projected.

## SYNTAX

```
Add-VSDynamoDBTableProjection [[-NonKeyAttributes] <Object>] [[-ProjectionType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.Projection resource property to the template.
Represents attributes that are copied (projected from the table into an index.
These are in addition to the primary key attributes and index key attributes, which are automatically projected.

## PARAMETERS

### -NonKeyAttributes
Represents the non-key attribute names which will be projected into the index.
For local secondary indexes, the total count of NonKeyAttributes summed across all of the local secondary indexes, must not exceed 20.
If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-nonkeyatt
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### -ProjectionType
The set of attributes that are projected into the index:
+  KEYS_ONLY - Only the index and primary keys are projected into the index.
+  INCLUDE - Only the specified table attributes are projected into the index.
The list of projected attributes is in NonKeyAttributes.
+  ALL - All of the table attributes are projected into the index.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-projtype
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

### Vaporshell.Resource.DynamoDB.Table.Projection
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html)

