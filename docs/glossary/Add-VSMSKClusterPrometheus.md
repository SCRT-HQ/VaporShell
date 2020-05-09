# Add-VSMSKClusterPrometheus

## SYNOPSIS
Adds an AWS::MSK::Cluster.Prometheus resource property to the template.
Prometheus settings for open monitoring.

## SYNTAX

```
Add-VSMSKClusterPrometheus [[-JmxExporter] <Object>] [[-NodeExporter] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.Prometheus resource property to the template.
Prometheus settings for open monitoring.

## PARAMETERS

### -JmxExporter
Indicates whether you want to enable or disable the JMX Exporter.

Type: JmxExporter
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-jmxexporter
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

### -NodeExporter
Indicates whether you want to enable or disable the Node Exporter.

Type: NodeExporter
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-nodeexporter
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

### Vaporshell.Resource.MSK.Cluster.Prometheus
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html)

