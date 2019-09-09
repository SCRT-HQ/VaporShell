# Add-VSEC2LaunchTemplateSpotOptions

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.SpotOptions resource property to the template.
Specifies options for Spot instances.

## SYNTAX

```
Add-VSEC2LaunchTemplateSpotOptions [[-SpotInstanceType] <Object>] [[-InstanceInterruptionBehavior] <Object>]
 [[-MaxPrice] <Object>] [[-BlockDurationMinutes] <Int32>] [[-ValidUntil] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.SpotOptions resource property to the template.
Specifies options for Spot instances.

SpotOptions is a property of the Amazon EC2 LaunchTemplate InstanceMarketOptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancemarketoptions.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SpotInstanceType
The Spot Instance request type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-spotinstancetype
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

### -InstanceInterruptionBehavior
The behavior when a Spot Instance is interrupted.
The default is terminate.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-instanceinterruptionbehavior
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

### -MaxPrice
The maximum hourly price you're willing to pay for the Spot Instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-maxprice
PrimitiveType: String
UpdateType: Mutable

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

### -BlockDurationMinutes
The required duration for the Spot Instances also known as Spot blocks, in minutes.
This value must be a multiple of 60 60, 120, 180, 240, 300, or 360.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-blockdurationminutes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidUntil
The end date of the request.
For a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached.
If the request is persistent, it remains active until it is canceled or this date and time is reached.
The default end date is 7 days from the current date.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-validuntil
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.SpotOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html)

