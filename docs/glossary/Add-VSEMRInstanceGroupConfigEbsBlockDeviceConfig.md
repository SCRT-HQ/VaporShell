# Add-VSEMRInstanceGroupConfigEbsBlockDeviceConfig

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.EbsBlockDeviceConfig resource property to the template.
Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigEbsBlockDeviceConfig [-VolumeSpecification] <Object>
 [[-VolumesPerInstance] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.EbsBlockDeviceConfig resource property to the template.
Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.

## PARAMETERS

### -VolumeSpecification
EBS volume specifications such as volume type, IOPS, and size GiB that will be requested for the EBS volume attached to an EC2 instance in the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification
Type: VolumeSpecification
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

### -VolumesPerInstance
Number of EBS volumes with a specific volume configuration that will be associated with every instance in the instance group

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumesperinstance
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

### Vaporshell.Resource.EMR.InstanceGroupConfig.EbsBlockDeviceConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html)

