# Add-VSEC2EC2FleetTagRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.TagRequest resource property to the template.
Specifies the tag key and value pair to use.

## SYNTAX

```
Add-VSEC2EC2FleetTagRequest [[-Value] <Object>] [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.TagRequest resource property to the template.
Specifies the tag key and value pair to use.

TagRequest is a property of the  AWS::EC2::TagSpecification: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html resource.

## PARAMETERS

### -Value
The key of the tag.
Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters.
May not begin with aws:.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-value
PrimitiveType: String
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

### -Key
The value of the tag.
Constraints: Tag values are case-sensitive and accept a maximum of 255 Unicode characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-key
PrimitiveType: String
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

### Vaporshell.Resource.EC2.EC2Fleet.TagRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html)

