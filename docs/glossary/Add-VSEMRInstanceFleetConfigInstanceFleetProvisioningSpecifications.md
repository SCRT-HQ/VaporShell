# Add-VSEMRInstanceFleetConfigInstanceFleetProvisioningSpecifications

## SYNOPSIS
Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template.
**Note**

## SYNTAX

```
Add-VSEMRInstanceFleetConfigInstanceFleetProvisioningSpecifications [-SpotSpecification] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template.
**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

InstanceTypeConfig is a sub-property of InstanceFleetConfig.
InstanceTypeConfig determines the EC2 instances that Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities.
There can be a maximum of 5 instance type configurations in a fleet.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SpotSpecification
The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-spotspecification
Type: SpotProvisioningSpecification
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

### Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecifications
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html)

