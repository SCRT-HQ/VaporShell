# Add-VSEC2LaunchTemplateCapacityReservationSpecification

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.CapacityReservationSpecification resource property to the template.
Specifies an instance's Capacity Reservation targeting option.
You can specify only one option at a time.

## SYNTAX

```
Add-VSEC2LaunchTemplateCapacityReservationSpecification [[-CapacityReservationPreference] <Object>]
 [[-CapacityReservationTarget] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.CapacityReservationSpecification resource property to the template.
Specifies an instance's Capacity Reservation targeting option.
You can specify only one option at a time.

CapacityReservationSpecification is a property of the  Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CapacityReservationPreference
Indicates the instance's Capacity Reservation preferences.
Possible preferences include:
+  open - The instance can run in any open Capacity Reservation that has matching attributes instance type, platform, Availability Zone.
+  none - The instance avoids running in a Capacity Reservation even if one is available.
The instance runs in On-Demand capacity.

Type: CapacityReservationPreference
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationpreference
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

### -CapacityReservationTarget
Information about the target Capacity Reservation.

Type: CapacityReservationTarget
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationtarget
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

### Vaporshell.Resource.EC2.LaunchTemplate.CapacityReservationSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html)

