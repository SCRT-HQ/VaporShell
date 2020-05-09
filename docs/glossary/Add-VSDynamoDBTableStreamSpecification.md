# Add-VSDynamoDBTableStreamSpecification

## SYNOPSIS
Adds an AWS::DynamoDB::Table.StreamSpecification resource property to the template.
Represents the DynamoDB Streams configuration for a table in DynamoDB.

## SYNTAX

```
Add-VSDynamoDBTableStreamSpecification [-StreamViewType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.StreamSpecification resource property to the template.
Represents the DynamoDB Streams configuration for a table in DynamoDB.

## PARAMETERS

### -StreamViewType
When an item in the table is modified, StreamViewType determines what information is written to the stream for this table.
Valid values for StreamViewType are:
+  KEYS_ONLY - Only the key attributes of the modified item are written to the stream.
+  NEW_IMAGE - The entire item, as it appears after it was modified, is written to the stream.
+  OLD_IMAGE - The entire item, as it appeared before it was modified, is written to the stream.
+  NEW_AND_OLD_IMAGES - Both the new and the old item images of the item are written to the stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html#cfn-dynamodb-streamspecification-streamviewtype
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DynamoDB.Table.StreamSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html)

