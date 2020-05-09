# Add-VSAmazonMQBrokerUser

## SYNOPSIS
Adds an AWS::AmazonMQ::Broker.User resource property to the template.
The list of ActiveMQ users (persons or applications who can access queues and topics.
This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~.
This value must be 2-100 characters long.

## SYNTAX

```
Add-VSAmazonMQBrokerUser [-Username] <Object> [[-Groups] <Object>] [[-ConsoleAccess] <Object>]
 [-Password] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AmazonMQ::Broker.User resource property to the template.
The list of ActiveMQ users (persons or applications who can access queues and topics.
This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~.
This value must be 2-100 characters long.

## PARAMETERS

### -Username
The username of the ActiveMQ user.
This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes - .
_ ~.
This value must be 2-100 characters long.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-username
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

### -Groups
The list of groups 20 maximum to which the ActiveMQ user belongs.
This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes - .
_ ~.
This value must be 2-100 characters long.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-groups
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

### -ConsoleAccess
Enables access to the the ActiveMQ Web Console for the ActiveMQ user.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-consoleaccess
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
The password of the ActiveMQ user.
This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-password
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AmazonMQ.Broker.User
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html)

