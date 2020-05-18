# Add-VSCassandraTableBillingMode

## SYNOPSIS
Adds an AWS::Cassandra::Table.BillingMode resource property to the template.
Determines the billing mode for the table - on-demand or provisioned.

## SYNTAX

```
Add-VSCassandraTableBillingMode [-Mode] <Object> [[-ProvisionedThroughput] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cassandra::Table.BillingMode resource property to the template.
Determines the billing mode for the table - on-demand or provisioned.

## PARAMETERS

### -Mode
The billing mode for the table:
+ On-demand mode - ON_DEMAND
+ Provisioned mode - PROVISIONED
**Note**
If you choose PROVISIONED mode, then you'll also need to specify provisioned throughput read and write capacity for the table.
Valid Values: ON_DEMAND | PROVISIONED

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-mode
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

### -ProvisionedThroughput
The provisioned read capacity and write capacity for the table.
For more information, see Provisioned Throughput Capacity Mode: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html#ReadWriteCapacityMode.Provisioned in the *Amazon Keyspaces Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-provisionedthroughput
UpdateType: Mutable
Type: ProvisionedThroughput

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

### Vaporshell.Resource.Cassandra.Table.BillingMode
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html)

