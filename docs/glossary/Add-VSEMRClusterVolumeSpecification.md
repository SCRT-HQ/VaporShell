# Add-VSEMRClusterVolumeSpecification

## SYNOPSIS
Adds an AWS::EMR::Cluster.VolumeSpecification resource property to the template.
VolumeSpecification is a subproperty of the EbsBlockDeviceConfig property type.
VolumeSecification determines the volume type, IOPS, and size (GiB for EBS volumes attached to EC2 instances.

## SYNTAX

```
Add-VSEMRClusterVolumeSpecification [[-Iops] <Int32>] [-SizeInGB] <Int32> [-VolumeType] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.VolumeSpecification resource property to the template.
VolumeSpecification is a subproperty of the EbsBlockDeviceConfig property type.
VolumeSecification determines the volume type, IOPS, and size (GiB for EBS volumes attached to EC2 instances.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Iops
The number of I/O operations per second IOPS that the volume supports.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-iops
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SizeInGB
The volume size, in gibibytes GiB.
This can be a number from 1 - 1024.
If the volume type is EBS-optimized, the minimum value is 10.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-sizeingb
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeType
The volume type.
Volume types supported are gp2, io1, standard.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html#cfn-elasticmapreduce-cluster-volumespecification-volumetype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.VolumeSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-volumespecification.html)

