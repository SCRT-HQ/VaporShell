# Add-VSOpsWorksLayerShutdownEventConfiguration

## SYNOPSIS
Adds an AWS::OpsWorks::Layer.ShutdownEventConfiguration resource property to the template.
The Shutdown event configuration.

## SYNTAX

```
Add-VSOpsWorksLayerShutdownEventConfiguration [[-DelayUntilElbConnectionsDrained] <Object>]
 [[-ExecutionTimeout] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Layer.ShutdownEventConfiguration resource property to the template.
The Shutdown event configuration.

## PARAMETERS

### -DelayUntilElbConnectionsDrained
Whether to enable Elastic Load Balancing connection draining.
For more information, see Connection Draining: https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-delayuntilelbconnectionsdrained
PrimitiveType: Boolean
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

### -ExecutionTimeout
The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-executiontimeout
PrimitiveType: Integer
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

### Vaporshell.Resource.OpsWorks.Layer.ShutdownEventConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html)

