# Add-VSMSKClusterBrokerLogs

## SYNOPSIS
Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template.
You can configure your MSK cluster to send broker logs to different destination types.
This configuration specifies the details of these destinations.

## SYNTAX

```
Add-VSMSKClusterBrokerLogs [[-S3] <Object>] [[-Firehose] <Object>] [[-CloudWatchLogs] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template.
You can configure your MSK cluster to send broker logs to different destination types.
This configuration specifies the details of these destinations.

## PARAMETERS

### -S3
Details of the Amazon S3 destination for broker logs.

Type: S3
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-s3
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

### -Firehose
Details of the Kinesis Data Firehose delivery stream that is the destination for broker logs.

Type: Firehose
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-firehose
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

### -CloudWatchLogs
Details of the CloudWatch Logs destination for broker logs.

Type: CloudWatchLogs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-cloudwatchlogs
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.BrokerLogs
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html)

