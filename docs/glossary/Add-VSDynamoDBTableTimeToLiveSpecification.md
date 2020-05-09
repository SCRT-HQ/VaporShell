# Add-VSDynamoDBTableTimeToLiveSpecification

## SYNOPSIS
Adds an AWS::DynamoDB::Table.TimeToLiveSpecification resource property to the template.
Represents the settings used to enable or disable Time to Live (TTL for the specified table.

## SYNTAX

```
Add-VSDynamoDBTableTimeToLiveSpecification [-AttributeName] <Object> [-Enabled] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.TimeToLiveSpecification resource property to the template.
Represents the settings used to enable or disable Time to Live (TTL for the specified table.

## PARAMETERS

### -AttributeName
The name of the TTL attribute used to store the expiration time for items in the table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-attributename
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

### -Enabled
Indicates whether TTL is to be enabled true or disabled false on the table.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-enabled
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DynamoDB.Table.TimeToLiveSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html)

