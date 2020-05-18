# Add-VSImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification

## SYNOPSIS
Adds an AWS::ImageBuilder::ImageRecipe.EbsInstanceBlockDeviceSpecification resource property to the template.
The image recipe EBS instance block device specification includes the Amazon EBS-specific block device mapping specifications for the image.

## SYNTAX

```
Add-VSImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification [[-Encrypted] <Object>]
 [[-DeleteOnTermination] <Object>] [[-Iops] <Object>] [[-KmsKeyId] <Object>] [[-SnapshotId] <Object>]
 [[-VolumeSize] <Object>] [[-VolumeType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ImageBuilder::ImageRecipe.EbsInstanceBlockDeviceSpecification resource property to the template.
The image recipe EBS instance block device specification includes the Amazon EBS-specific block device mapping specifications for the image.

## PARAMETERS

### -Encrypted
Use to configure device encryption.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-encrypted
UpdateType: Immutable
PrimitiveType: Boolean

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

### -DeleteOnTermination
Configures delete on termination of the associated device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-deleteontermination
UpdateType: Immutable
PrimitiveType: Boolean

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

### -Iops
Use to configure device IOPS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-iops
UpdateType: Immutable
PrimitiveType: Integer

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsKeyId
Use to configure the KMS key to use when encrypting the device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-kmskeyid
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SnapshotId
The snapshot that defines the device contents.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-snapshotid
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeSize
Overrides the volume size of the device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-volumesize
UpdateType: Immutable
PrimitiveType: Integer

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeType
Overrides the volume type of the device.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-volumetype
UpdateType: Immutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ImageBuilder.ImageRecipe.EbsInstanceBlockDeviceSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html)

