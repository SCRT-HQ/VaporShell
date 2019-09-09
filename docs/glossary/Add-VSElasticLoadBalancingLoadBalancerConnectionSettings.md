# Add-VSElasticLoadBalancingLoadBalancerConnectionSettings

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings resource property to the template.
Specifies the idle timeout value for your Classic Load Balancer.

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerConnectionSettings [-IdleTimeout] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings resource property to the template.
Specifies the idle timeout value for your Classic Load Balancer.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -IdleTimeout
The time, in seconds, that the connection is allowed to be idle no data has been sent over the connection before it is closed by the load balancer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.ConnectionSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html)

