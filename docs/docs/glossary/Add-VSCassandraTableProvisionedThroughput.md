# Add-VSCassandraTableProvisionedThroughput

## SYNOPSIS
Adds an AWS::Cassandra::Table.ProvisionedThroughput resource property to the template.
The provisioned throughput for the table, consisting of ReadCapacityUnits and WriteCapacityUnits.

## SYNTAX

```
Add-VSCassandraTableProvisionedThroughput [-ReadCapacityUnits] <Object> [-WriteCapacityUnits] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cassandra::Table.ProvisionedThroughput resource property to the template.
The provisioned throughput for the table, consisting of ReadCapacityUnits and WriteCapacityUnits.

## PARAMETERS

### -ReadCapacityUnits
The amount of read capacity that's provisioned for the table.
For more information, see Read/Write Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html in the the *Amazon Keyspaces Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-readcapacityunits
UpdateType: Mutable
PrimitiveType: Integer

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
The amount of write capacity that's provisioned for the table.
For more information, see Read/Write Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html in the the *Amazon Keyspaces Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-writecapacityunits
UpdateType: Mutable
PrimitiveType: Integer

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

### Vaporshell.Resource.Cassandra.Table.ProvisionedThroughput
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html)

