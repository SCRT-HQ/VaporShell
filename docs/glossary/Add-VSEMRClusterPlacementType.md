# Add-VSEMRClusterPlacementType

## SYNOPSIS
Adds an AWS::EMR::Cluster.PlacementType resource property to the template.
PlacementType is a property of the AWS::EMR::Cluster resource.
PlacementType determines the Amazon EC2 Availability Zone configuration of the cluster (job flow.

## SYNTAX

```
Add-VSEMRClusterPlacementType [-AvailabilityZone] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.PlacementType resource property to the template.
PlacementType is a property of the AWS::EMR::Cluster resource.
PlacementType determines the Amazon EC2 Availability Zone configuration of the cluster (job flow.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AvailabilityZone
The Amazon EC2 Availability Zone for the cluster.
AvailabilityZone is used for uniform instance groups, while AvailabilityZones plural is used for instance fleets.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html#cfn-elasticmapreduce-cluster-placementtype-availabilityzone
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.EMR.Cluster.PlacementType
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html)

