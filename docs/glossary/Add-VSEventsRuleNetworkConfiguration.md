# Add-VSEventsRuleNetworkConfiguration

## SYNOPSIS
Adds an AWS::Events::Rule.NetworkConfiguration resource property to the template.
This structure specifies the network configuration for an ECS task.

## SYNTAX

```
Add-VSEventsRuleNetworkConfiguration [[-AwsVpcConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.NetworkConfiguration resource property to the template.
This structure specifies the network configuration for an ECS task.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AwsVpcConfiguration
Use this structure to specify the VPC subnets and security groups for the task and whether a public IP address is to be used.
This structure is relevant only for ECS tasks that use the awsvpc network mode.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html#cfn-events-rule-networkconfiguration-awsvpcconfiguration
Type: AwsVpcConfiguration
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.Rule.NetworkConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html)

