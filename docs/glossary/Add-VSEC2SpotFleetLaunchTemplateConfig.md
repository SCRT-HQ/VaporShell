# Add-VSEC2SpotFleetLaunchTemplateConfig

## SYNOPSIS
Adds an AWS::EC2::SpotFleet.LaunchTemplateConfig resource property to the template.
Specifies a launch template and overrides.

## SYNTAX

```
Add-VSEC2SpotFleetLaunchTemplateConfig [[-LaunchTemplateSpecification] <Object>] [[-Overrides] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SpotFleet.LaunchTemplateConfig resource property to the template.
Specifies a launch template and overrides.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LaunchTemplateSpecification
The launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-launchtemplatespecification
Type: FleetLaunchTemplateSpecification
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

### -Overrides
Any parameters that you specify override the same parameters in the launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-overrides
DuplicatesAllowed: False
ItemType: LaunchTemplateOverrides
Type: List
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

### Vaporshell.Resource.EC2.SpotFleet.LaunchTemplateConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html)

