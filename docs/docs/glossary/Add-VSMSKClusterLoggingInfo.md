# Add-VSMSKClusterLoggingInfo

## SYNOPSIS
Adds an AWS::MSK::Cluster.LoggingInfo resource property to the template.
You can configure your MSK cluster to send broker logs to different destination types.
This is a container for the configuration details related to broker logs.

## SYNTAX

```
Add-VSMSKClusterLoggingInfo [-BrokerLogs] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.LoggingInfo resource property to the template.
You can configure your MSK cluster to send broker logs to different destination types.
This is a container for the configuration details related to broker logs.

## PARAMETERS

### -BrokerLogs
You can configure your MSK cluster to send broker logs to different destination types.
This configuration specifies the details of these destinations.

Type: BrokerLogs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html#cfn-msk-cluster-logginginfo-brokerlogs
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

### Vaporshell.Resource.MSK.Cluster.LoggingInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html)

