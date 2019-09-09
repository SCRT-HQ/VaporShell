# Add-VSEC2EC2FleetFleetLaunchTemplateSpecificationRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateSpecificationRequest resource property to the template.
Specifies the launch template to use for an EC2 Fleet.
You must specify either the launch template ID or launch template name in the request.

## SYNTAX

```
Add-VSEC2EC2FleetFleetLaunchTemplateSpecificationRequest [[-LaunchTemplateName] <Object>] [[-Version] <Object>]
 [[-LaunchTemplateId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateSpecificationRequest resource property to the template.
Specifies the launch template to use for an EC2 Fleet.
You must specify either the launch template ID or launch template name in the request.

FleetLaunchTemplateSpecificationRequest is a property of the  FleetLaunchTemplateConfigRequest: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LaunchTemplateName
The name of the launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplatename
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

### -Version
The version number of the launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-version
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

### -LaunchTemplateId
The ID of the launch template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplateid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.EC2Fleet.FleetLaunchTemplateSpecificationRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html)

