# Add-VSDynamoDBTableProvisionedThroughput

## SYNOPSIS
Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template.
Throughput for the specified table, which consists of values for ReadCapacityUnits and WriteCapacityUnits.
For more information about the contents of a provisioned throughput structure, see Amazon DynamoDB Table ProvisionedThroughput: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html.

## SYNTAX

```
Add-VSDynamoDBTableProvisionedThroughput [-ReadCapacityUnits] <Object> [-WriteCapacityUnits] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template.
Throughput for the specified table, which consists of values for ReadCapacityUnits and WriteCapacityUnits.
For more information about the contents of a provisioned throughput structure, see Amazon DynamoDB Table ProvisionedThroughput: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ReadCapacityUnits
The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ThrottlingException.
For more information, see Specifying Read and Write Requirements: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput in the *Amazon DynamoDB Developer Guide*.
If read/write capacity mode is PAY_PER_REQUEST the value is set to 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits
PrimitiveType: Long
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

### -WriteCapacityUnits
The maximum number of writes consumed per second before DynamoDB returns a ThrottlingException.
For more information, see Specifying Read and Write Requirements: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput in the *Amazon DynamoDB Developer Guide*.
If read/write capacity mode is PAY_PER_REQUEST the value is set to 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits
PrimitiveType: Long
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

### Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html)

