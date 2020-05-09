# Add-VSEMRInstanceGroupConfigEbsConfiguration

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template.
The Amazon EBS configuration of a cluster instance.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigEbsConfiguration [[-EbsBlockDeviceConfigs] <Object>] [[-EbsOptimized] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template.
The Amazon EBS configuration of a cluster instance.

## PARAMETERS

### -EbsBlockDeviceConfigs
An array of Amazon EBS volume specifications attached to a cluster instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfigs
DuplicatesAllowed: False
ItemType: EbsBlockDeviceConfig
Type: List
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

### -EbsOptimized
Indicates whether an Amazon EBS volume is EBS-optimized.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsoptimized
PrimitiveType: Boolean
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

### Vaporshell.Resource.EMR.InstanceGroupConfig.EbsConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html)

