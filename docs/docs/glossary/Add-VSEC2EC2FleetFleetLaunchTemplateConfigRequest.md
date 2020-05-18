# Add-VSEC2EC2FleetFleetLaunchTemplateConfigRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest resource property to the template.
Specifies a launch template and overrides for an EC2 Fleet.

## SYNTAX

```
Add-VSEC2EC2FleetFleetLaunchTemplateConfigRequest [[-LaunchTemplateSpecification] <Object>]
 [[-Overrides] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest resource property to the template.
Specifies a launch template and overrides for an EC2 Fleet.

FleetLaunchTemplateConfigRequest is a property of the AWS::EC2::EC2Fleet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html resource.

## PARAMETERS

### -LaunchTemplateSpecification
The launch template to use.
You must specify either the launch template ID or launch template name in the request.

Type: FleetLaunchTemplateSpecificationRequest
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-launchtemplatespecification
UpdateType: Immutable

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

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-overrides
ItemType: FleetLaunchTemplateOverridesRequest
UpdateType: Immutable

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

### Vaporshell.Resource.EC2.EC2Fleet.FleetLaunchTemplateConfigRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html)

