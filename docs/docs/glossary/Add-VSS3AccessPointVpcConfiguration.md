# Add-VSS3AccessPointVpcConfiguration

## SYNOPSIS
Adds an AWS::S3::AccessPoint.VpcConfiguration resource property to the template.
The Virtual Private Cloud (VPC configuration for this access point.

## SYNTAX

```
Add-VSS3AccessPointVpcConfiguration [[-VpcId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::AccessPoint.VpcConfiguration resource property to the template.
The Virtual Private Cloud (VPC configuration for this access point.

## PARAMETERS

### -VpcId
If this field is specified, the access point will only allow connections from the specified VPC ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html#cfn-s3-accesspoint-vpcconfiguration-vpcid
UpdateType: Immutable
PrimitiveType: String

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

### Vaporshell.Resource.S3.AccessPoint.VpcConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html)

