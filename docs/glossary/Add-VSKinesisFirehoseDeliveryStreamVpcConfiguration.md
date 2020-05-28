# Add-VSKinesisFirehoseDeliveryStreamVpcConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.VpcConfiguration resource property to the template.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamVpcConfiguration [-RoleARN] <Object> [-SubnetIds] <Object>
 [-SecurityGroupIds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.VpcConfiguration resource property to the template.

## PARAMETERS

### -RoleARN
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-rolearn
UpdateType: Immutable
PrimitiveType: String

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

### -SubnetIds
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-subnetids
UpdateType: Immutable
Type: List
PrimitiveItemType: String
DuplicatesAllowed: False

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecurityGroupIds
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-securitygroupids
UpdateType: Immutable
Type: List
PrimitiveItemType: String
DuplicatesAllowed: False

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

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.VpcConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html)

