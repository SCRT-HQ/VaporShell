# Add-VSDMSEndpointKafkaSettings

## SYNOPSIS
Adds an AWS::DMS::Endpoint.KafkaSettings resource property to the template.
Provides information that describes an Apache Kafka endpoint.
This information includes the output format of records applied to the endpoint and details of transaction and control table data information.

## SYNTAX

```
Add-VSDMSEndpointKafkaSettings [[-Broker] <Object>] [[-Topic] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DMS::Endpoint.KafkaSettings resource property to the template.
Provides information that describes an Apache Kafka endpoint.
This information includes the output format of records applied to the endpoint and details of transaction and control table data information.

## PARAMETERS

### -Broker
The broker location and port of the Kafka broker that hosts your Kafka instance.
Specify the broker in the form  broker-hostname-or-ip:port .
For example, "ec2-12-345-678-901.compute-1.amazonaws.com:2345".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html#cfn-dms-endpoint-kafkasettings-broker
PrimitiveType: String
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

### -Topic
The topic to which you migrate the data.
If you don't specify a topic, AWS DMS specifies "kafka-default-topic" as the migration topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html#cfn-dms-endpoint-kafkasettings-topic
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

### Vaporshell.Resource.DMS.Endpoint.KafkaSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html)

